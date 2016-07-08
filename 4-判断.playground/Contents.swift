//:# 判断

//: if/else判断
//简单判断
let isSuccess = true

if isSuccess {
    print("success!")
}else {
    print("failue!")
}

//多条件判断
let i = 100
let j = 200
if i>=100 && j>=200 {
    print("YES!")
}else {
    print("NO!")
}


//: switch判断
let sex = "Male"
switch sex {
    
case "Male":
    print("He is a boy")
    break
    
case "Female":
     print("She is a girl")
    break
    
default:
    print("unknown")
    break
    
}
