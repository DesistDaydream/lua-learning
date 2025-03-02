local Widget = require "widgets/widget"
local Text = require "widgets/text" -- 引入 text 控件，用来显示文本

local CurrentDateWidget = Class(Widget, function(self, owner)
    -- 调用父类的构造函数。下面两行是定义一个 Widget 的最基本代码
    Widget._ctor(self, "CurrentDateWidget")
    self:SetScale(2, 2) -- 将badge放大为三围大小的两倍

    -- 上面创建的 Widget 没有任何内容，在游戏里也看不到
    -- 为 Widget 添加一些文本
    -- - NUMBERFONT # 字体名，在 fonts.lua 里可以找到，有很多字体可选
    -- - 18 # 字体大小
    -- - Hello DesistDaydream # 显示的内容
    -- - { 0, 0, 255, 1 } # 文本的颜色及透明度，对应 RGBA。最后的 A 定义文本的透明度：1 完全不透明，完全透明
    self.mytext = self:AddChild(Text(NUMBERFONT, 18, "Hello DesistDaydream", { 0, 0, 255, 1 }))
end)

-- 返回该 Widget
return CurrentDateWidget
