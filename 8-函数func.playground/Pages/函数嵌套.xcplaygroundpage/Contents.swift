//: [<< 函数对象](@previous)

//: # 函数嵌套

//: 函数嵌套的主要好处在于可以对外屏蔽不必要的功能

func operation(operationType:String, a:Int, b: Int) -> Int {
    
    //内部定义的函数
    func add () ->Int {
        return a + b
    }
    
    func minus () ->Int {
        return a - b
    }
    
    if operationType == "add" {
        return add()
    }else {
        return minus()
    }
    
}

operation("add", a: 1, b: 2)


//: [>> 关键字](@next)