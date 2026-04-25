-- Lua table(表)
-- 表是一种关联数组，用于存储键值对。
-- 表的键可以是任意类型，值可以是任意类型。
-- 表的键必须是唯一的，值可以重复。

-- 实例化一个空表
local mytable = {}
print(mytable)

-- 给表添加键值对
mytable.name = "DesistDaydream"
mytable.age = 18
-- 可以通过两种方式访问表的键值对：
-- 1. 使用点号
-- 2. 使用方括号
print(mytable.name, mytable["age"])

-- 移除引用
mytable = nil
-- lua 垃圾回收会释放内存
print(mytable) -- 这里将会输出 nil

-- 简单的 table
mytable = {}
print("mytable 的类型是 ", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- alternatetable和mytable的是指同一个 table
alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("alternatetable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)
