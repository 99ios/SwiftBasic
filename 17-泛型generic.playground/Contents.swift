//: # 泛型 generic

func intValueCompare(param1:Int, param2:Int) -> Bool {
    return param1 == param2
}

func doubleValueCompare(param1:Double, param2:Double) -> Bool {
    return param1 == param2
}

func stringValueCompare(param1:String, param2:String) -> Bool {
    return param1 == param2
}

intValueCompare(1, param2: 1)
doubleValueCompare(1.0, param2: 2.0)
stringValueCompare("hi", param2: "swift")

//: 为了更好的重用代码，对于一个函数中的参数可以预先不指定具体的类型，而采用占位符的方式，待具体执行时，再指定具体的类型

//形式：func 函数名<泛型类型名称: 父类, 协议> (参数1: 泛型类型名称 ) -> 返回值类型 { 函数体 }
func objValueCompare<Type:Equatable>(param1:Type, param2:Type) -> Bool {
    return param1 == param2
}

objValueCompare(1, param2: 1)
objValueCompare(1.0, param2: 2.0)
objValueCompare("hi", param2: "swift")

/* 报错，参数类型必须一致
objValueCompare(1, param2: "swift")
*/
