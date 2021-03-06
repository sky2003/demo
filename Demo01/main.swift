//
//  main.swift
//  Demo01
//
//  Created by sky on 14-7-19.
//  Copyright (c) 2014年 sky. All rights reserved.
//

/*
    swift的类型是在C和OC的基础上提出来的，Int是整形、Double和Float是浮点型、Bool是布尔型、String是字符串、以及两个常用的集合类：Array、Dictionary，Switf中还增加了OC中没有的数据类型，例如：元组（Tuple）- 元组可以创建或者传递一组数据，当作为函数的返回值的时候，可以用一个元组返回多个值。可选（Optional）类型 - 用于处理值缺失的情况。

    常量、变量的声明：将一个名字和一个指定的类型值关联起来。常量的值一旦设定就不能改变，而变量的值可以随意的改变。
    常量和变量必须在使用前声明：用let来声明常量、用var来声明变量
    var myVar = 10 //声明一个变量
    myVar = 100 //对变量的值进行修改
    let myLet = 20//声明一个常量，常量一旦赋初值后将不能修改。

    类型标注：
        当声明变量、常量的时候可以加上类型标注，说明常量或者变量中要存储的值的类型。
        格式：var/let 变量或常量名:数据类型   var msg : String - 将msg的类型标注为String
    注意：一般来说你很少需要写类型标注。如果你在声明常量或者变量的时候赋了一个初始值，Swift可以推断出这个常量或者变量的类型，在上面的例子中，没有给msg赋初始值，所以变量msg的类型是通过一个类型标注指定的，而不是通过初始值推断的。
    
    
    常量与变量的命名：常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。一旦将常量或者变量声明为确定的类型，就不能使用相同的名字再次进行声明，或者改变其存储的值的类型。同时，你也不能将常量与变量进行互转。
    注意：如果你需要使用与Swift保留关键字相同的名称作为常量或者变量名，你可以使用反引号（`）将关键字包围的方式将其作为名字使用。无论如何，你应当避免使用关键字作为常量或变量名，除非你别无选择。

    输出常量和变量：可以使用println函数来输出当前常量或变量的值，println是一个用来输出的全局函数，输出的内容会在最后换行。如果你用 Xcode，println将会输出内容到“console”面板上。(另一种函数叫print，唯一区别是在输出内容最后不会换行。)
*/


import Foundation

var π = 3.1415926
println("π = \(π)")

//将关键字做为变量名时的处理方法
var (`Int`) = 10
println("Int = \(`Int`)")

//可以更改现有的变量值为其同数据类型的其他值，在下面的例子中，friendlyWelcome的值从"Hello!"改为了"Bonjour!":
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
// friendlyWelcome 现在是 "Bonjour!"

//与变量不同，常量的值一旦被确定就不能更改了。尝试这样做会导致编译时报错：
let languageName = "Swift"
//languageName = "Swift++"
// 这会报编译时错误 - languageName 不可改变

//swift用字符串插值的方式把常量、变量名当做占位符加入到字符串中，Swift会用当前常量或变量的值替换这些占位符。将常量或变量名放入圆括号中，并在开括号前使用反斜杠将其转义
println("The current value of friendlyWelcome is \(friendlyWelcome)")
// 输出 "The current value of friendlyWelcome is Bonjour!


//swift语言的注释

//单行注释以双正斜杠作(//)为起始标记:
// 这是一个注释

//你也可以进行多行注释，其起始标记为单个正斜杠后跟随一个星号(/*)，终止标记为一个星号后跟随单个正斜杠(*/):
/* 这是一个,
多行注释 */

//与C语言多行注释不同，Swift 的多行注释可以嵌套在其它的多行注释之中。你可以先生成一个多行注释块，然后在这个注释块之中再嵌套成第二个多行注释。终止注释时先插入第二个注释块的终止标记，然后再插入第一个注释块的终止标记：

/* 这是第一个多行注释的开头
/* 这是第二个被嵌套的多行注释 */
这是第一个多行注释的结尾 */

//分号 ： 与其他大部分编程语言不同，Swift 并不强制要求你在每条语句的结尾处使用分号（;），当然，你也可以按照你自己的习惯添加分号。有一种情况下必须要用分号，即你打算在同一行内写多条独立的语句：
let cat = "????"; println(cat)
// 输出 "????"


//2014-7-20笔记   今天主要已学git的用法为主 主要实现xcode与git的结合配置使用
/*
1、配置github账号 xcode->preferences->accounts->(+)add repository 配置github账号
2、commit->用于提交对文件的修改。
3、push->用于将文件推送到远程服务器
4、pull->用于从远程服务器上下载代码 -> 如果远程服务器文件内容与本地文件内容不同会自动合并
5、checkout->用于从远程服务器clone代码
6、source Control -> 工程分支 -> configure 工程 -> remotes -> (+)add remote添加远程仓库
*/
