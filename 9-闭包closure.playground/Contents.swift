//: # 闭包Closure

//: 闭包和函数类似，可以理解成函数的简写形式，其本质是匿名的可执行代码块。在该代码块中，封装了其所处环境的所有状态。在闭包之前声明的所有变量和常量都可以被它捕获。

//: 闭包的定义方式：{(参数名1:类型, 参数名2:类型) -> 返回值类型 in 功能实现 }

let addClosure = {
    (num1:Int, num2:Int) -> Int in
    
    return num1 + num2
}

let minusClosure = {
    (num1:Int, num2:Int) -> Int in
    
    return num1 - num2
}

//: 把闭包作为函数的输入参数
func calc(num1:Int, num2:Int, closure:(Int, Int) ->Int) -> Int {
    return closure(num1, num2)
}

//: 调用函数，把闭包作为参数传入
let result1 = calc(100, num2: 200, closure: addClosure)
let result2 = calc(100, num2: 200, closure: minusClosure)

