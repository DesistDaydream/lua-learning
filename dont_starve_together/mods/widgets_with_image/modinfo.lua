name = "DesistDaydream 练习 Mod"
description = [[

]]

author = "DesistDaydream"
version = "0.0.1"

folder_name = folder_name or "command_manager"
if not folder_name:find("workshop-") then
    name = name .. " -dev"
end

dst_compatible = true
client_only_mod = true
all_clients_require_mod = false

icon_atlas = "my_mod_icon.xml"
icon = "my_mod_icon.tex"

api_version = 10

local key_list = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T",
    "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "F1", "F2", "F3", "F4", "F5", "F6",
    "F7", "F8", "F9", "F10", "F11", "F12", "TAB", "CAPSLOCK", "LSHIFT", "RSHIFT", "LCTRL", "RCTRL", "LALT", "RALT", "ALT",
    "CTRL", "SHIFT", "SPACE", "ENTER", "ESCAPE", "MINUS", "EQUALS", "BACKSPACE", "PERIOD", "SLASH", "LEFTBRACKET",
    "BACKSLASH", "RIGHTBRACKET", "TILDE", "PRINT", "SCROLLOCK", "PAUSE", "INSERT", "HOME", "DELETE", "END", "PAGEUP",
    "PAGEDOWN", "UP", "DOWN", "LEFT", "RIGHT", "KP_DIVIDE", "KP_MULTIPLY", "KP_PLUS", "KP_MINUS", "KP_ENTER", "KP_PERIOD",
    "KP_EQUALS" }
local key_options = {}

for i = 1, #key_list do
    key_options[i] = { description = key_list[i], data = "KEY_" .. key_list[i] }
end
--
key_options[#key_list + 1] = {
    description = '-', data = 'KEY_MINUS'
}
--
configuration_options = {
    {
        name = "language",
        label = "选择语言（Select language）",
        options = {
            { description = '中文', data = "zh" },
            { description = 'English', data = "en" },
        },
        default = "zh",
    },
    {
        name = "key_toggle",
        label = "快捷键（Shortcut）",
        options = key_options,
        default = "KEY_R",
    }
}
