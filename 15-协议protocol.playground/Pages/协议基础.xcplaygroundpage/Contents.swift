//: # 协议 Protocol

//: 定义协议: 协议首字母大写
//租赁协议
protocol RentProtocol {
    //协议中定义的属性，必须指定{get}或{get set}
    var pricePerMonth:Double {get}
    var duration:Int {get set}
    var discount:Double {get set}
    
    //协议中定义函数(方法)
    func payment() -> Double //付款
    func cancel() //取消租赁合同
}

//: 定义遵守协议的类：可以在不同的类中，对协议中的方法设置不同的功能实现，如cancel方法
class PersonalRenter:RentProtocol {
    var personName:String?
    
    //协议中定义的属性
    var pricePerMonth:Double = 500.0
    var duration:Int = 3
    var discount:Double = 1.0
    
    func payment() -> Double {
        let amount = self.pricePerMonth *  self.discount * Double(duration)
        return amount
    }
    
    func cancel() {
        print("与个人客户的租赁协议取消")
    }
}

class BusinessRenter:RentProtocol {
    var companyName:String?
    
    //协议中定义的属性
    var pricePerMonth:Double = 400.0
    var duration:Int = 12
    var discount:Double = 0.9
    
    func payment() -> Double {
        let amount = self.pricePerMonth *  self.discount * Double(duration)
        return amount
    }
    
    func cancel() {
        print("与企业客户的租赁协议取消")
    }
}

//: 调用协议中的方法和属性
var person = PersonalRenter()
person.personName = "jack"
person.duration = 6
let personAmount = person.payment()
print("\(person.personName)(个人)应付租金\(personAmount)元")
person.cancel()

var company = BusinessRenter()
company.companyName = "Government"
company.duration = 24
let companyAmount = company.payment()
print("\(company.companyName)(企业)应付租金\(companyAmount)元")
company.cancel()


//: [>> 多协议](@next)
