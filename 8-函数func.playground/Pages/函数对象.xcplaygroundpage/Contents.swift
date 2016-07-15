//: [<< 函数基础](@previous)

//: # 函数对象

//: 函数赋值给常量
func add(a:Int, b:Int) -> Int {
    return a + b
}

//函数作为对象，赋值给常量
let myAdd = add

var result = myAdd(1, b:2)


//: 函数作为返回值
func minus(a:Int, b:Int) ->Int {
    return a - b
}

/*
参数：operationType: String
返回值：(a: Int, b:Int) -> Int 返回一个函数，该函数有两个参数，并且返回一个Int型的返回值
*/
func operation (operationType: String) -> (a: Int, b:Int) -> Int {
    if operationType == "add" {
        return add
    }
    
    return minus
}

//调用方法1
operation("add")(a:3,b:4)

//调用方法2：把返回的函数赋值给常量returnFunc
let returnFunc = operation("add")
result = returnFunc(a:3,b:4)

//: 函数作为参数
func largeNumber(a:Int, b:Int) -> Int {
    if a > b {
        return a
    }
    
    return b
}

func smallNumber(a:Int, b:Int) -> Int {
    if a < b {
        return a
    }
    
    return b
}

func comparePlus(funcParam:(Int, Int) ->Int,a:Int, b:Int) -> Int {

    return funcParam(a, b)

}

comparePlus(largeNumber, a: 3, b: 4)
comparePlus(smallNumber, a: 3, b: 4)

//: [>> 函数嵌套](@next)
