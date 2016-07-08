//: # 类的定义

//: 类的定义
class Person {
    
    //定义类的属性
    var name:String?
    var sex:String = "Female"
    var age:Int?
    var height:Double?
    var weight:Double?
    var nationality:String = "China"
    
    //定义类的方法
    func sleep() {
        print("\(name) sleep")
    }
    
    func eat(food:String) {
        print("\(name) eat \(food)")
    }
    
}

//: 类的实例化--对象
var person = Person()

//: 对象的属性的设置(setter)与访问(getter)
//设置对象的属性
person.name = "jack"
person.sex = "male"
person.age = 34
person.height = 1.75
person.weight = 65.0

//访问对象的属性
person.name
person.sex
person.age
person.height
person.weight
person.nationality

//: 调用对象的方法
person.sleep()
person.eat("rice")


