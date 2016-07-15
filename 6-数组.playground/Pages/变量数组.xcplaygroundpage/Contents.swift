//: [<< 常量数组](@previous)

//: # 变量数组

//: 变量数组的声明
//常量数组
let array1:Array<String>
array1 = ["Tom","Jack","Jim"]

//变量数组
var array2 = array1



//: 变量数组的常用操作
//在数组最后增加一个元素
array2.append("Rose")
array2

//在指定位置增加一个元素
array2.insert("Shane", atIndex: 0)
array2

//删除一个元素
array2.removeAtIndex(0)
array2

//修改数组中元素的值
array2[0] = "kobe"
array2

//合并数组
var array3 = ["hello","swift"]
var array4 = ["hi","Objective-C"]
array4 += array3
array4
