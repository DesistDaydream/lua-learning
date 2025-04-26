local TarnsferPanel = GLOBAL.require("screens/transferpanel")
AddClassPostConstruct("screens/playerhud", function(self)
    -- 在屏幕顶部添加一个按钮，用来触发面板的显示与关闭
    self.openbutton = self:AddChild(TEMPLATES.StandardButton(function() self:ChangeTransferPanelState() end, "Open",
        { 100, 50 }))
    self.openbutton:SetVAnchor(ANCHOR_TOP)
    self.openbutton:SetHAnchor(ANCHOR_MIDDLE)
    self.openbutton:SetScaleMode(SCALEMODE_PROPORTIONAL)
    self.openbutton:SetMaxPropUpscale(MAX_HUD_SCALE)

    function self:ChangeTransferPanelState()
        self:ShowTarnsferPanel()
    end

    -- 显示面板
    self.ShowTarnsferPanel = function(_, attach)
        self.transferpanel = TarnsferPanel(self.owner)
        self:OpenScreenUnderPause(self.transferpanel)
        return self.transferpanel
    end
    -- 关闭面板
    self.CloseTarnsferPanel = function(_)
        if self.transferpanel then
            self.transferpanel:Close()
            self.transferpanel = nil
        end
    end
end)
