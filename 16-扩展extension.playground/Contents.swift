//: # 扩展 extension

//: 扩展extension在swift中的作用类似于OC中的分类category，常用于给一些系统自带类或者第三方SDK增加功能(方法)，原因在于这些类的实现不对外公开。

//: 扩展类的方法
//扩展String类的方法
extension String {
    func addPrefix (prefixString:String) -> String {
        return prefixString + self
    }
    
}

var myString = "swift"
var newString = myString.addPrefix("hi ")
myString //调用类扩展方法，并不改变self的值
newString


//: 扩展计算属性：swift中的扩展extension比OC的分类category强大的一点，在于可以对基本类型Int/Double进行扩展
extension Double {
    var $:Double {return (self/6.5)}
    var €:Double {return (self/8)}
}

var RMB = 100.0
var dollor = RMB.$
var euro = RMB.€

//: mutating(突变/变异)关键字：在扩展中添加的函数中，需要修改self的值时，需要在函数关键字func前添加mutation关键字，否则修改self时编译器会报错。另外，还要注意一点，self在声明时，不能是常量let

extension String {
     mutating func changeString(prefixString:String) -> String {
        self = prefixString + self
        return self
    }
}

var myString2 = "swift"
var newString2 = myString2.changeString("hi ")
myString2 //原字符串的值发生了改变
newString2


