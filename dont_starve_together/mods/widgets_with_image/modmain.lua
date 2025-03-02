-- 引入widget里添加的素材
Assets = {
    Asset("ATLAS", "images/widgets_demo.xml"),
    Asset("IMAGE", "images/widgets_demo.tex")
}

local CurrentDateWidget = require("widgets/currentdatewidget")
AddClassPostConstruct("widgets/controls", function(self, owner)
    self.CurrentDateWidget = self:AddChild(CurrentDateWidget(self.owner))

    self.CurrentDateWidget:SetHAnchor(1)
    self.CurrentDateWidget:SetVAnchor(1)

    self.CurrentDateWidget:SetPosition(200, -100)

    self.CurrentDateWidget:Show()

    -- 创建一个空实例，用来启动定时器的。在定时器中每秒更新一次文本内容
    local inst = GLOBAL.CreateEntity()
    inst:DoPeriodicTask(1, function()
        -- 获取时分秒
        local hour = GLOBAL.os.date("%H")
        local minute = GLOBAL.os.date("%M")
        local second = GLOBAL.os.date("%S")

        -- 更新文本信息
        self.CurrentDateWidget:OnUpdate(hour .. ":" .. minute .. ":" .. second)
    end)
end)
