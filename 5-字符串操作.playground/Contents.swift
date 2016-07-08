//:# 字符串

//: 字符串初始化
let string1:String = "hello world"
string1

let string2 = "hello!"
string2


var string3:String;
string3 = string1;
string3

var string4 = string2
string4


//: 字符串操作
//字符串比较
let string5 = "hello"
let string6 = "world"
if string5 == string6 {
    print("Same String")
}else {
    print("Different String")
}

//字符串截取
var string7 = "hello world"
string7.removeAtIndex(string7.startIndex)


//字符串拼接:使用+号拼接
var string8:String
string8 = string5 + " " + string6


//判断字符串是否为空
let string9 = ""
if string9.isEmpty {
    print("Empty String")
}

//字符串插入
var string10 = "hello world"
let newString = "!!!"
string10.insertContentsOf(newString.characters, at: string10.endIndex)

//获取字符串的长度
let string11 = "hello world"
var stringLength = string11.characters.count

//: 字符串转换
//int转string
var number12 = 123
var string12 = String(number12)

//string转int
let string13 = "123"
var number13 = Int(string13)
