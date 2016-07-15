//: # 元组Tuples

//: 元组是由一个或者多个常量、变量组成的单个实体，放在括号内，并由逗号分隔。元组中的元素类型可以不同

//: 元组的定义
//方法一
let person1 = ("jack","male",34)

//方法二
let person2 = (name:"tom", sex:"female", age:30)

//元组中使用变量(使用前，变量需要提前初始化)
var height:Double = 1.75
var weight:Double = 65.0
var person3 = ("jack",34, height, weight)


//: 元组中元素的访问
//根据角标访问,使用点语法
person1.0
person1.1
person1.2


//根据名称访问
person2.name
person2.sex
person2.age


//: 元组中数据的修改
//常量元组中的元素值不能修改!
/*
person1.0 = "rose"
person2.name = "rose"
*/

//变量元组中的元素可以修改
person3.0 = "rose"
//修改外部变量的值不会改变元组中元素的值
weight = 70.0
person3.3
//修改元组中变量的值也不会影响外部变量的值
person3.3 = 80
weight
