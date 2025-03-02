local Widget = require "widgets/widget"
local Image = require "widgets/image" -- 引入 image 控件
local Text = require "widgets/text"   -- 引入 text 控件

local CurrentDateWidget = Class(Widget, function(self, owner)
    -- 调用父类的构造函数。下面两行是定义一个 Widget 的最基本代码
    Widget._ctor(self, "CurrentDateWidget")
    self:SetScale(2, 2) -- 将badge放大为三围大小的两倍

    -- 在 Widget 里添加**图片**
    -- myimage 是随便定义的（TODO: 好像没有地方会引用？），用来接收 AddChild() 添加的图片控件的对象的
    self.myimage = self:AddChild(Image("images/widgets_demo.xml", "widgets_demo.tex"))
    self.myimage:SetScale(0.5, 0.5) -- 设置添加的 image 控件的缩放大小

    -- 在 Widget 里添加**文本**
    self.mytext = self:AddChild(Text(NUMBERFONT, 18, "00:00:00", { 255, 0, 0, 1 }))
end)

-- 定义一个更新文本内容的方法
function CurrentDateWidget:OnUpdate(time)
    self.mytext:SetString(time)
end

return CurrentDateWidget
