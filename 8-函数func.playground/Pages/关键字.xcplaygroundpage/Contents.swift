//: [<< 函数嵌套](@previous)

//: # 关键字

func function1(myName:String, myAge:Int) {
    print("my name is \(myName), my age is \(myAge)")
}

function1("shixin", myAge: 34)

//: var
/*传参都是常量，不能改变其值
func function2(myName:String, myAge:Int) {
    print("my name is \(myName), my age is \(++myAge)")
}
*/

//对于需要修改的传参，添加var关键字
func function2(myName:String,var myAge:Int) {
    print("my name is \(myName), my age is \(++myAge)")
}

function2("sx", myAge: 34)

//case2:函数体内修改变量的值仅限于函数内
var myName = "sx"
var myAge = 34
func function3(var myName:String,var myAge:Int) {
    myName = "shixin"
    myAge++
    print("my name is \(myName), my age is \(myAge)")
}

function3(myName, myAge: myAge)
myName
myAge

//: inout：当函数体内修改变量的值，需要反馈到函数外时，需要把参数添加inout关键字
var dynamicName:String = "shixin"

func function4(inout name:String) {
    name = "shaneshi"
    print(name)
}

dynamicName
//调用时，参数前会自动添加&符号
function4(&dynamicName)
dynamicName



