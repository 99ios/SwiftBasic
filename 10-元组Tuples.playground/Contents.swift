//: # 元组Tuples

//: 元组是由一个或者多个常量、变量组成的单个实体，放在括号内，并由逗号分隔。元组中的元素类型可以不同

//: 元组的定义
//方法一
let person1 = ("jack","male",34)

//方法二
let person2 = (name:"tom", sex:"female", age:30)

//: 元组中元素的访问
//根据角标访问,使用点语法
person1.0
person1.1
person1.2


//根据名称访问
person2.name
person2.sex
person2.age



