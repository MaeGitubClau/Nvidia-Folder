local ADDON_NAME = ...

local ICON = 134400
local TYPE_BPMACRO = "CLICK"
local GENERAL = "general"
local CHARACTER = "character"

local sampleText = [[#character
[Kick Focus]
@bind CTRL-K
/stopcasting
/cast [@focus] Kick

#general
[Target Mouseover]
/target mouseover
]]

local function GetInitialText()
    if type(BindPadBulkImporterDataText) == "string" and BindPadBulkImporterDataText ~= "" then
        return BindPadBulkImporterDataText
    end
    return sampleText
end

local function Print(message)
    DEFAULT_CHAT_FRAME:AddMessage("|cff66ccffBindPadBulkImporter:|r " .. message)
end

local function Trim(value)
    return tostring(value or ""):gsub("^%s+", ""):gsub("%s+$", "")
end

local function EscapeName(name)
    name = Trim(name)
    name = name:gsub("[^%w%s_%-]", "")
    if name == "" then
        name = "Imported"
    end
    return name:sub(1, 32)
end

local function EscapeWoWMacroName(name)
    return EscapeName(name):sub(1, 16)
end

local function NormalizeTab(tab)
    tab = Trim(tab):lower()
    if tab == "general" or tab == "account" or tab == "global" then
        return GENERAL
    end
    return CHARACTER
end

local function StartsWithSlash(value)
    return Trim(value):sub(1, 1) == "/"
end

local function SplitColumns(line)
    local columns = {}

    if line:find("\t") then
        for column in (line .. "\t"):gmatch("(.-)\t") do
            columns[#columns + 1] = Trim(column)
        end
        return columns
    end

    if line:find("|", 1, true) then
        for column in (line .. "|"):gmatch("(.-)|") do
            columns[#columns + 1] = Trim(column)
        end
        return columns
    end

    local action, hotkey, description = line:match("^%s*(.-)%s%s+([^%s]+)%s%s+(/.*)$")
    if action and hotkey and description then
        return { Trim(action), Trim(hotkey), Trim(description) }
    end

    return columns
end

local function NormalizeHotkey(hotkey)
    hotkey = Trim(hotkey):upper()
    if hotkey == "" or hotkey == "NONE" or hotkey == "N/A" then
        return nil
    end

    hotkey = hotkey:gsub("%s+", "")

    local modifiers = {}
    local i = 1
    while i <= #hotkey do
        local ch = hotkey:sub(i, i)
        if ch == "^" then
            modifiers.CTRL = true
            i = i + 1
        elseif ch == "!" then
            modifiers.ALT = true
            i = i + 1
        elseif ch == "+" then
            modifiers.SHIFT = true
            i = i + 1
        else
            break
        end
    end

    local key = hotkey:sub(i):gsub("CONTROL", "CTRL"):gsub("%+", "-")
    local tokens = {}
    for token in (key .. "-"):gmatch("(.-)-") do
        if token ~= "" then
            tokens[#tokens + 1] = token
        end
    end

    if #tokens > 1 then
        key = tokens[#tokens]
        for tokenIndex = 1, #tokens - 1 do
            local token = tokens[tokenIndex]
            if token == "CTRL" or token == "ALT" or token == "SHIFT" then
                modifiers[token] = true
            end
        end
    end

    if key == "" then
        return nil
    end

    local normalized = {}
    if modifiers.CTRL then
        normalized[#normalized + 1] = "CTRL"
    end
    if modifiers.ALT then
        normalized[#normalized + 1] = "ALT"
    end
    if modifiers.SHIFT then
        normalized[#normalized + 1] = "SHIFT"
    end
    normalized[#normalized + 1] = key

    return table.concat(normalized, "-")
end

local function TryParseTableRows(text)
    local entries = {}

    text = tostring(text or ""):gsub("\r\n", "\n"):gsub("\r", "\n")
    for line in (text .. "\n"):gmatch("(.-)\n") do
        local columns = SplitColumns(line)
        if #columns >= 3 then
            local action = columns[1]
            local hotkey = columns[2]
            local description = columns[3]
            if StartsWithSlash(description) and action ~= "" then
                entries[#entries + 1] = {
                    name = EscapeName(action),
                    macrotext = description,
                    bind = NormalizeHotkey(hotkey),
                    rawbind = Trim(hotkey),
                    tab = CHARACTER,
                }
            end
        end
    end

    return entries
end

local function ParseMacros(text)
    local tableRows = TryParseTableRows(text)
    if #tableRows > 0 then
        return tableRows
    end

    local entries = {}
    local currentTab = CHARACTER
    local currentName
    local currentBind
    local currentBody = {}

    local function flush()
        if not currentName then
            return
        end

        local body = Trim(table.concat(currentBody, "\n"))
        if body ~= "" then
            entries[#entries + 1] = {
                name = EscapeName(currentName),
                macrotext = body,
                bind = NormalizeHotkey(currentBind),
                rawbind = currentBind,
                tab = currentTab,
            }
        end

        currentName = nil
        currentBind = nil
        currentBody = {}
    end

    text = tostring(text or ""):gsub("\r\n", "\n"):gsub("\r", "\n")
    for line in (text .. "\n"):gmatch("(.-)\n") do
        local trimmed = Trim(line)
        local section = trimmed:match("^#%s*(general)$") or trimmed:match("^#%s*(character)$") or trimmed:match("^#%s*(account)$") or trimmed:match("^#%s*(global)$") or trimmed:match("^#%s*(bindpad)$")
        local bracketName = trimmed:match("^%[(.-)%]$")
        local headingName = trimmed:match("^##+%s+(.+)$")
        local dashName = trimmed:match("^%-%-%-%s+(.+)$")

        if section then
            flush()
            currentTab = NormalizeTab(section)
        elseif bracketName or headingName or dashName then
            flush()
            currentName = bracketName or headingName or dashName
        elseif currentName and trimmed:lower():match("^@bind%s+") then
            currentBind = trimmed:match("^@bind%s+(.+)$")
        elseif currentName then
            currentBody[#currentBody + 1] = line
        elseif trimmed ~= "" then
            Print("ignored text before first macro name: " .. trimmed:sub(1, 40))
        end
    end

    flush()
    return entries
end

local function EntriesToReviewText(entries)
    local lines = { "#bindpad" }

    for _, entry in ipairs(entries) do
        lines[#lines + 1] = ""
        lines[#lines + 1] = "[" .. entry.name .. "]"
        if entry.bind and entry.bind ~= "" then
            lines[#lines + 1] = "@bind " .. entry.bind
        elseif entry.rawbind and entry.rawbind ~= "" then
            lines[#lines + 1] = "@bind " .. entry.rawbind
        end
        lines[#lines + 1] = entry.macrotext
    end

    return table.concat(lines, "\n")
end

local function GetCharacterKey()
    return "PROFILE_" .. GetRealmName() .. "_" .. UnitName("player")
end

local function GetCurrentProfileNum()
    if type(GetSpecialization) == "function" then
        return GetSpecialization() or 1
    end
    if type(GetActiveTalentGroup) == "function" then
        return GetActiveTalentGroup() or 1
    end
    return 1
end

local function EnsureBindPadTables()
    if type(BindPadVars) ~= "table" then
        BindPadVars = {
            tab = 1,
            version = 1.3,
            GeneralKeyBindings = {},
        }
    end

    BindPadVars.GeneralKeyBindings = BindPadVars.GeneralKeyBindings or {}
    BindPadVars.numSlot = BindPadVars.numSlot or 49

    local character = GetCharacterKey()
    local profileNum = GetCurrentProfileNum()
    BindPadVars[character] = BindPadVars[character] or {}
    BindPadVars[character].profileForTalentGroup = BindPadVars[character].profileForTalentGroup or {}
    BindPadVars[character].profileForTalentGroup[profileNum] = profileNum
    BindPadVars[character][profileNum] = BindPadVars[character][profileNum] or {}
    BindPadVars[character][profileNum].CharacterSpecificTab1 = BindPadVars[character][profileNum].CharacterSpecificTab1 or {}
    BindPadVars[character][profileNum].CharacterSpecificTab1.numSlot = BindPadVars[character][profileNum].CharacterSpecificTab1.numSlot or 49

    return BindPadVars.GeneralKeyBindings, BindPadVars[character][profileNum].CharacterSpecificTab1
end

local function BindPadNameExists(tab, name)
    for _, slot in pairs(tab) do
        if type(slot) == "table" and slot.name == name then
            return true
        end
    end
    return false
end

local function UniqueBindPadName(tab, requested)
    local name = EscapeName(requested)
    if not BindPadNameExists(tab, name) then
        return name
    end

    for i = 2, 99 do
        local suffix = "_" .. i
        local candidate = name:sub(1, 32 - #suffix) .. suffix
        if not BindPadNameExists(tab, candidate) then
            return candidate
        end
    end

    return name:sub(1, 28) .. "_" .. time()
end

local function FirstFreeSlot(tab)
    local i = 1
    while tab[i] ~= nil do
        i = i + 1
    end
    return i
end

local function IsBindPadAction(action)
    return type(action) == "string" and action:match("^CLICK%s+BindPadMacro:")
end

local function ClearBindPadMacroBindings()
    if not GetNumBindings or not GetBinding or not SetBinding then
        return 0
    end

    local cleared = 0
    local total = GetNumBindings()
    for i = 1, total do
        local command, key1, key2 = GetBinding(i)
        if IsBindPadAction(command) then
            if key1 and SetBinding(key1, nil) then
                cleared = cleared + 1
            end
            if key2 and SetBinding(key2, nil) then
                cleared = cleared + 1
            end
        end
    end
    return cleared
end

local function ClearBindPadTab(tab)
    local cleared = 0
    for key, value in pairs(tab) do
        if key ~= "numSlot" then
            tab[key] = nil
            if type(value) == "table" then
                cleared = cleared + 1
            end
        end
    end
    tab.numSlot = 49
    return cleared
end

local function ClearBindPad()
    if InCombatLockdown and InCombatLockdown() then
        Print("leave combat before clearing BindPad.")
        return
    end

    local generalTab, characterTab = EnsureBindPadTables()
    local clearedEntries = ClearBindPadTab(generalTab) + ClearBindPadTab(characterTab)
    local clearedBinds = ClearBindPadMacroBindings()

    if clearedBinds > 0 and SaveBindings then
        SaveBindings(GetCurrentBindingSet and GetCurrentBindingSet() or 1)
    end

    Print("cleared " .. clearedEntries .. " BindPad entries and " .. clearedBinds .. " BindPad keybinds for this character/profile. Reload UI before importing again.")
end

local function ImportToBindPad(entries)
    if InCombatLockdown and InCombatLockdown() then
        Print("leave combat before importing.")
        return
    end

    local generalTab, characterTab = EnsureBindPadTables()
    local bound = 0
    local skippedExisting = 0
    local bindingSet = GetCurrentBindingSet and GetCurrentBindingSet() or 1

    for _, entry in ipairs(entries) do
        local targetTab = entry.tab == GENERAL and generalTab or characterTab
        local name = UniqueBindPadName(targetTab, entry.name)
        local slot = FirstFreeSlot(targetTab)
        local action = "CLICK BindPadMacro:" .. name

        targetTab[slot] = {
            type = TYPE_BPMACRO,
            name = name,
            macrotext = entry.macrotext,
            texture = ICON,
            action = action,
        }
        targetTab.numSlot = math.max(targetTab.numSlot or 49, slot)

        if entry.bind and SetBinding then
            local existingAction = GetBindingAction and GetBindingAction(entry.bind) or ""
            if existingAction ~= "" and not IsBindPadAction(existingAction) then
                skippedExisting = skippedExisting + 1
            else
                local ok = SetBinding(entry.bind, action)
                if ok then
                    bound = bound + 1
                else
                    Print("could not bind " .. entry.bind .. " for " .. name .. ".")
                end
            end
        end
    end

    if bound > 0 and SaveBindings then
        SaveBindings(bindingSet)
    end

    Print("imported " .. #entries .. " macros into BindPad" .. (bound > 0 and (" and applied " .. bound .. " safe binds") or "") .. (skippedExisting > 0 and ("; skipped " .. skippedExisting .. " existing WoW binds") or "") .. ". Reload UI, then open BindPad to review.")
end

local function FindMacro(name, isCharacter)
    local globalCount, characterCount = GetNumMacros()
    local accountLimit = MAX_ACCOUNT_MACROS or 120
    local startIndex = isCharacter and (accountLimit + 1) or 1
    local endIndex = isCharacter and (accountLimit + characterCount) or globalCount

    for i = startIndex, endIndex do
        local macroName = GetMacroInfo(i)
        if macroName == name then
            return i
        end
    end
end

local function ImportToWoWMacros(entries)
    if InCombatLockdown and InCombatLockdown() then
        Print("leave combat before importing.")
        return
    end

    local imported = 0
    local skipped = 0

    for _, entry in ipairs(entries) do
        local isCharacter = entry.tab ~= GENERAL
        local name = EscapeWoWMacroName(entry.name)
        local existing = FindMacro(name, isCharacter)
        if #entry.macrotext > 255 then
            skipped = skipped + 1
            Print("skipped " .. entry.name .. ": WoW macro text is over 255 characters. Import it to BindPad instead.")
        elseif existing then
            local ok = pcall(EditMacro, existing, name, ICON, entry.macrotext)
            if ok then
                imported = imported + 1
            else
                skipped = skipped + 1
                Print("could not update " .. name .. ". Try again out of combat from the macro UI.")
            end
        else
            local ok, result = pcall(CreateMacro, name, ICON, entry.macrotext, isCharacter)
            if ok and result then
                imported = imported + 1
            else
                skipped = skipped + 1
                Print("could not create " .. name .. ". Your macro tab may be full.")
            end
        end
    end

    Print("created/updated " .. imported .. " WoW macros" .. (skipped > 0 and ("; skipped " .. skipped) or "") .. ".")
end

local importerFrame

local function GetEditorText()
    return importerFrame and importerFrame.editBox:GetText() or ""
end

StaticPopupDialogs["BINDPAD_BULK_IMPORTER_CLEAR"] = {
    text = "Clear current General and character BindPad entries, plus BindPad macro keybinds?",
    button1 = "Clear BindPad",
    button2 = CANCEL,
    OnAccept = ClearBindPad,
    timeout = 0,
    whileDead = true,
    hideOnEscape = true,
}

local function RequestClearBindPad()
    StaticPopup_Show("BINDPAD_BULK_IMPORTER_CLEAR")
end

local function ImportWith(mode)
    local entries = ParseMacros(GetEditorText())
    if #entries == 0 then
        Print("no macros found. Use [Macro Name] then macro body, or paste Action/Hotkey/Description rows.")
        return
    end

    if mode == "wow" then
        ImportToWoWMacros(entries)
    elseif mode == "bindpad" then
        ImportToBindPad(entries)
    elseif mode == "review" then
        importerFrame.editBox:SetText(EntriesToReviewText(entries))
        importerFrame.editBox:SetCursorPosition(0)
        Print("built review text for " .. #entries .. " macros. Edit @bind lines before importing.")
    else
        local binds = 0
        for _, entry in ipairs(entries) do
            if entry.bind then
                binds = binds + 1
            end
        end
        Print("found " .. #entries .. " macros ready to import" .. (binds > 0 and (" with " .. binds .. " binds") or "") .. ".")
    end
end

local function CreateImporterFrame()
    local frame = CreateFrame("Frame", "BindPadBulkImporterFrame", UIParent, "BasicFrameTemplateWithInset")
    frame:SetSize(640, 500)
    frame:SetPoint("CENTER")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:Hide()

    frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    frame.title:SetPoint("LEFT", frame.TitleBg, "LEFT", 5, 0)
    frame.title:SetText("BindPad Bulk Importer")

    local instructions = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    instructions:SetPoint("TOPLEFT", 16, -36)
    instructions:SetPoint("RIGHT", -16, 0)
    instructions:SetJustifyH("LEFT")
    instructions:SetText("GGL import data is preloaded when included. Import BindPad adds macros and will not overwrite existing WoW keybinds.")

    local scrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", 16, -62)
    scrollFrame:SetPoint("BOTTOMRIGHT", -34, 58)

    local editBox = CreateFrame("EditBox", nil, scrollFrame)
    editBox:SetMultiLine(true)
    editBox:SetAutoFocus(false)
    editBox:SetFontObject(ChatFontNormal)
    editBox:SetWidth(560)
    editBox:SetText(GetInitialText())
    editBox:SetCursorPosition(0)
    scrollFrame:SetScrollChild(editBox)
    frame.editBox = editBox

    local function button(text, x, handler)
        local b = CreateFrame("Button", nil, frame, "GameMenuButtonTemplate")
        b:SetSize(118, 28)
        b:SetPoint("BOTTOMLEFT", x, 18)
        b:SetText(text)
        b:SetScript("OnClick", handler)
        return b
    end

    button("Check", 16, function() ImportWith("check") end)
    button("Build Review", 140, function() ImportWith("review") end)
    button("Import BindPad", 264, function() ImportWith("bindpad") end)
    button("Clear BindPad", 388, RequestClearBindPad)
    button("Close", 512, function() frame:Hide() end)

    return frame
end

SLASH_BINDPADBULKIMPORTER1 = "/bpimport"
SLASH_BINDPADBULKIMPORTER2 = "/macroimport"
SlashCmdList.BINDPADBULKIMPORTER = function()
    importerFrame = importerFrame or CreateImporterFrame()
    importerFrame:SetShown(not importerFrame:IsShown())
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function()
    local dataNote = type(BindPadBulkImporterDataText) == "string" and BindPadBulkImporterDataText ~= "" and " Preloaded GGL data is included." or ""
    Print("loaded. Type /bpimport or /macroimport to review and import macros." .. dataNote)
end)
