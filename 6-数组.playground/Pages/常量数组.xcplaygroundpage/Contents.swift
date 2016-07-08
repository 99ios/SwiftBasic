//: # 常量数组（不可变数组）

//: 常量数组的声明
let array1:Array<String>
array1 = ["Tom","Jack","Jim"]

let array2 = ["Tom","Jack","Jim"]

let array3 = [1,2,3]

let array4 = [String]()

let array5 = [String](count: 5, repeatedValue: "")

/*
数组中的元素类型必须要一致
error: type of expression is ambiguous without more context
let array4 = [1,2,"Tom"]
*/


//: 常量数组的操作
//查看数组数量
let arrayNum = array1.count

//遍历数组中的元素
for var obj in array1 {
    print(obj)
}

for obj in array1 {
    print(obj)
}

//根据下标获取数组中的元素
var string0 = array1[0]
var string1 = array1[1]
var string2 = array1[2]

for var i = 0; i < array1.count ; i++ {
    print(array1[i])
}

//获取数组中第一个元素
var firstObj = array1.first
var lastObj = array1.last


//: [>> 变量数组](@next)
