local ADDON_NAME = ...

local function Print(message)
    DEFAULT_CHAT_FRAME:AddMessage("|cffff9933ModifierBindCleaner:|r " .. message)
end

local function IsCtrlAltKey(key)
    key = tostring(key or "")
    return key:find("CTRL%-") ~= nil or key:find("ALT%-") ~= nil
end

local function CollectModifierBinds()
    local keys = {}
    local seen = {}

    if not GetNumBindings or not GetBinding then
        return keys
    end

    for index = 1, GetNumBindings() do
        local command, key1, key2 = GetBinding(index)
        for _, key in ipairs({ key1, key2 }) do
            if IsCtrlAltKey(key) and not seen[key] then
                seen[key] = true
                keys[#keys + 1] = {
                    key = key,
                    command = command or "",
                }
            end
        end
    end

    table.sort(keys, function(a, b)
        return a.key < b.key
    end)

    return keys
end

local function PrintSample(keys)
    local limit = math.min(#keys, 12)
    for index = 1, limit do
        Print(keys[index].key .. " -> " .. keys[index].command)
    end
    if #keys > limit then
        Print("...and " .. (#keys - limit) .. " more.")
    end
end

local function Check()
    local keys = CollectModifierBinds()
    Print("found " .. #keys .. " CTRL/ALT keybinds.")
    PrintSample(keys)
    if #keys > 0 then
        Print("type /unbindmods confirm to remove them.")
    end
end

local function Confirm()
    if InCombatLockdown and InCombatLockdown() then
        Print("leave combat before changing keybinds.")
        return
    end

    local keys = CollectModifierBinds()
    if #keys == 0 then
        Print("no CTRL/ALT keybinds found.")
        return
    end

    local removed = 0
    for _, entry in ipairs(keys) do
        if SetBinding and SetBinding(entry.key, nil) then
            removed = removed + 1
        end
    end

    if removed > 0 and SaveBindings then
        SaveBindings(GetCurrentBindingSet and GetCurrentBindingSet() or 1)
    end

    Print("removed " .. removed .. " CTRL/ALT keybinds. Type /reload, then check your keybinds.")
end

local function Help()
    Print("/unbindmods check - show CTRL/ALT binds that would be removed.")
    Print("/unbindmods confirm - remove CTRL/ALT binds after you have checked.")
end

SLASH_MODIFIERBINDCLEANER1 = "/unbindmods"
SlashCmdList.MODIFIERBINDCLEANER = function(message)
    message = tostring(message or ""):lower():gsub("^%s+", ""):gsub("%s+$", "")
    if message == "check" then
        Check()
    elseif message == "confirm" then
        Confirm()
    else
        Help()
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function()
    Print("loaded. Type /unbindmods check before removing CTRL/ALT binds.")
end)
