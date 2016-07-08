//: # 字典

//: 字典初始化
//[key类型：value值类型]
var dict1:[String: Int]
dict1 = ["Math":98, "English": 80]

var dict2:[String: String]
dict2 = ["Math":"98", "English": "80"]

//: 字典操作
//字典的读取（根据键值key）
var mathResult = dict1["Math"]
var englishResult = dict2["English"]

//键值的修改
dict1["Math"]
dict1["Math"] = 100
dict1["Math"]

dict2.updateValue("88", forKey: "English")
dict2["English"]

//插入新的键值对
dict1["NewCourse"] = 100
dict1

//移除键值对
dict1.removeValueForKey("NewCourse")
dict1

//: 迭代字典
for (key, value) in dict2 {
    print(key, value)
}
