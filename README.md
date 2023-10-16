# 概述

> 参考：
>
> - [GitHub 项目，lua/lua](https://github.com/lua/lua)
> - [官网](https://www.lua.org/about.html)
> - [Wiki，Lua](https://en.wikipedia.org/wiki/Lua_(programming_language))
> - [知乎，Lua 是怎样一门语言？](https://www.zhihu.com/question/19841006)

[菜鸟教程，Lua](https://www.runoob.com/lua/lua-tutorial.html)

Lua 是一种强大、高效、轻量级、可嵌入的脚本语言。它支持过程式编程、面向对象编程、函数式编程、数据驱动编程和数据描述。

> tips: “Lua”（发音为 LOO-ah）在葡萄牙语中的意思是“月亮”。因此，它既不是首字母缩略词也不是缩写词，而是一个名词。更具体地说，“Lua”是一个名字，是地球月球的名字，也是语言的名字。与大多数名称一样，它应该以小写字母开头，即“Lua”。请不要将其写为“LUA”，这样既难看又令人困惑，因为这样它就变成了一个缩写词，对不同的人有不同的含义。所以，请把“Lua”写对！

# Hello World

```lua
print("Hello World!")
```

Lua可以在交互模式下输入代码直接查看效果，也可以将lua代码写入以.lua结尾的文件，然后使用`lua FILE.lua`命令查看代码效果，效果如下：

交互式：

```lua
~]# lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
> print("hello world!")
hello world!
```

脚本式：

```lua
~]# cat hello_world.lua
print("hello world!")
~]# lua hello_world.lua
hello world!
```

# Lua 环境安装与使用

**LuaJIT**(Just-In-Time) 是 Lua 编程语言的跟踪即时编译器。

# Lua 语言关键字

> 参考：

Lua的关键字有下面几个，这些关键字不能作为常量或者变量或其他用户自定义标识符

1. and
2. break
3. do
4. else
5. elseif
6. end
7. false
8. for
9. function
10. if
11. in
12. local
13. nil
14. not
15. or
16. repeat
17. return
18. then
19. true
20. until
21. while
22. goto

# Lua 语言规范

> 参考：

一般来说，以下划线开头连接一串大写字母的名字（比如_VERSION）被保留用于Lua内部全局变量,效果如下：
```lua
~]# lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
> print(_VERSION)
Lua 5.1
```

# Lua 标准库

> 参考：

## 变量

lua的变量有三种类型：

1. 全局变量。
2. 局部变量。
3. 表中的域。

默认情况下，lua定义的变量为全局变量。全局变量不需要声明，给一个变量赋值后即创建了这个变量，访问一个没有初始化的变量并不会报错，只不过得到的结果是`nil`,效果如下：

```lua
> print(b)
nil
> b=1
> print(b)
1
```

Note：如果想要删除一个变量，只需要将`nil`赋值给变量即可

也就是说，当且当一个变量不等于`nil`时，这个变量即存在

使用`local`关键字即可将变量声明为局部变量，效果如下:`local b = 5 `