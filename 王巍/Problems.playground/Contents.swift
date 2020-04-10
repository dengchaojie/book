import UIKit
//https://swiftgg.gitbook.io/swift/swift-jiao-cheng
//https://maimai.cn/web/gossip_detail?encode_id=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MjMxMjMxODYsImlhdCI6MTU4NTk4MDQxOH0.DolIACnCtOJjCrBZVttonPqOkkbISbJ8mVuTlcHd3l4
///裸辞在家捡基础
/// 1
let str = "kdkd"
str.self
class Person {
    let name: String
    init(name: String) {
        self.name = name
    }
}
let per = Person(name: "dcj")
per.self

struct Animal {
    let name: String
}
let ani = Animal(name:"cat")
ani.self

protocol SomePro {
    func whoAmI() -> Self
}

struct SomeModel: SomePro {
    func whoAmI() -> SomeModel {
        return self
    }
}
let model = SomeModel()
model.whoAmI()
///2
SomeModel.self


var strVal: String? = "lwlw"
let temp = strVal ?? "abc"
