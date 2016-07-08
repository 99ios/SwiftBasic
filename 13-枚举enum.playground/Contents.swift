//: # 枚举enum

//: 枚举类型的定义

//简易定义
enum color {
    case blue
    case red
    case green
    case gray
    case white
    case black
}

//复杂定义
enum colorWithDesc:String {
    case blue = "蓝色"
    case red = "红色"
    case green = "绿色"
    case gray = "灰色"
    case white = "白色"
    case black = "黑色"
}


//: 枚举类型的使用
//获取成员
let myColor1:color = color.blue
print(myColor1)

//获取成员以及成员的裸数据
let myColor2:colorWithDesc = colorWithDesc.blue
print(myColor2)
print(myColor2.rawValue)

//: switch配合使用
//设值
var myColor:color = color.blue

//枚举
switch myColor {
case color.blue:
    print("It is Blue")
     break
case color.red:
    print("It is Red")
    break
default:
    break
}

