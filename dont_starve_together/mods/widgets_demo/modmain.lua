-- 从 widgets 目录下引入自己定义的 Widget
local CurrentDateWidget = require("widgets/currentdatewidget")
AddClassPostConstruct("widgets/controls", function(self, owner)
    -- 创建自定义控件实例并添加到游戏界面
    self.CurrentDateWidget = self:AddChild(CurrentDateWidget(self.owner))

    -- 设置控件的锚点基准位置
    self.CurrentDateWidget:SetHAnchor(1) -- 设置原点 x 坐标位置，0, 1, 2 分别对应屏幕: 中、左、右
    self.CurrentDateWidget:SetVAnchor(1) -- 设置原点 y 坐标位置，0, 1, 2 分别对应屏幕: 中、上、下

    -- 设置 Widget 的位置，上面通过 SetHAnchor，SetVAnchor 两个函数设置了基准位置，
    -- 使用 SetPosition() 设置 Wigget 基于基准位置的偏移量
    -- SetPosition() 第一参数控制 x 轴，第二参数控制 y 轴。左减右加，上加下减
    -- 比如: SetPosition(200, -100) 是将 Widget 往右移了 200 单位，往下移了 100 单位
    self.CurrentDateWidget:SetPosition(200, -100)

    -- 显示控件
    self.CurrentDateWidget:Show()
end)
