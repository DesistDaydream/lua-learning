local Screen = require "widgets/screen"
local TEMPLATES = require "widgets/redux/templates"

local TransferPanel = Class(Screen, function(self, owner)
    Screen._ctor(self, "TransferPanel")
    self.owner = owner
    self.root = self.scalingroot:AddChild(TEMPLATES.ScreenRoot("root"))

    -- TEMPLATES.RectangleWindow() 方法的构造方法参数如下
    -- TEMPLATES.RectangleWindow(sizeX, sizeY, title_text, bottom_buttons, button_spacing, body_text)
    -- sizeX: 宽
    -- sizeY: 高
    -- title_text 面板title
    -- bottom_buttons 底部按钮
    -- button_spacing 按钮间距
    -- body_text 面板的文本
    self.panel = self:AddChild(TEMPLATES.RectangleWindow(400, 500, "UIDemo", {
        { text = "Add",   cb = function() end, offset = nil },
        { text = "Close", cb = function() end, offset = nil },
    }))
end)

-- return TransferPanel
