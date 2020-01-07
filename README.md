# Lua简介
官方网址：https://www.lua.org/

Lua是一种强大，高效，轻量级，可嵌入的脚本语言。它支持过程编程，面向对象的编程，功能编程，数据驱动的编程和数据描述。Lua将简单的过程语法与基于关联数组和可扩展语义的强大数据描述结构结合在一起。Lua是动态类型的，可以通过基于寄存器的虚拟机解释字节码来运行，并具有带有增量垃圾回收的自动内存管理功能，因此非常适合配置，脚本编写和快速原型制作。

说白了~~~ 就是脚本语言，类似shell语言 ~~~~

# Lua的基本语法
## Lua的使用方式
Lua可以在交互模式下输入代码直接查看效果，也可以将lua代码写入以.lua结尾的文件，然后使用`lua FILE.lua`命令查看代码效果，效果如下：

交互式：
```
[root@lichenhao lua]# lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
> print("hello world!")
hello world!
```
脚本式：
```
[root@lichenhao lua]# cat hello_world.lua 
print("hello world!") 
[root@lichenhao lua]# lua hello_world.lua 
hello world!
```

### 注释
单行注释：使用两个减号即可
```
--
```
多行注释：
```
--[[
 多行注释
 多行注释
 --]]
```

## Lua关键字
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
一般来说，以下划线开头连接一串大写字母的名字（比如_VERSION）被保留用于Lua内部全局变量,效果如下：
```
[root@lichenhao lua]# lua
Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio
> print(_VERSION)
Lua 5.1
```

## 变量
lua的变量有三种类型：1. 全局变量。2. 局部变量。3. 表中的域。

默认情况下，lua定义的变量为全局变量。全局变量不需要声明，给一个变量赋值后即创建了这个变量，访问一个没有初始化的变量并不会报错，只不过得到的结果是`nil`,效果如下：
```
> print(b)
nil
> b=1
> print(b)
1
```
Note：如果想要删除一个变量，只需要将`nil`赋值给变量即可

也就是说，当且当一个变量不等于`nil`时，这个变量即存在

使用`local`关键字即可将变量声明为局部变量，效果如下:`local b = 5 `