import UIKit
import Foundation
//var str = "Hello, playground"
// 函数柯里化是一种量产相似方法的好办法，可以通过柯里化一个方法模板来避免写出很多重复代码， 也方便了今后维护。
func addTo(_ adder: Int) -> (Int) -> Int {
    return {
        num in
        return num + adder
    }
}

let addTwo = addTo(2)
let result = addTwo(6)

func greaterThan(_ comparer: Int) -> (Int) -> Bool {
    return { $0 > comparer}
}
let greaterThan10 = greaterThan(10)
greaterThan10(13)
greaterThan10(9)

//String
protocol Vehicle {
    var numberOfWheels: Int { get }
    var color: UIColor { get set }
    
    mutating func changeColor()
}

struct MyCar: Vehicle {
    let numberOfWheels: Int = 4
    
    var color: UIColor = .red
    
    mutating func changeColor() {
        color = .blue
    }
    
    
}


 class MyClass {
    var date: NSDate {
willSet {
let d = date
print("即将将日期从 \(d) 设定至 \(newValue)") }
didSet {
print("已经将日期从 \(oldValue) 设定至 \(date)")
} }
init() {
date = NSDate()
} }

let foo = MyClass()
foo.date = foo.date.addingTimeInterval(10086)

//在 Swift 中所声明的属性包括存储属性和计算属性两种
//函子指的是可以被某个 函数作用，并映射为另一组结果，而这组结果也是函子的值。
let num: Int? = 3
let res = num.map { (temp) -> Int? in
    return temp * 2
}
let res2 = num.map{
    $0 * 2
}


//protocol extension 为 protocol 中定义的方法提供了一个默认的实现。通过提供 protocol 的 extension，我们为 protocol 提供了默认实现，这相当于变相将 protocol 中的方法设定 为了 optional。
//现在只需要记住结论，在任何时候使用 static 应该都 是没有问题的。
let interval = "a"..."z"
let ascii = "\0"..."~"
//在 Swift 中， .self 可以用在类型后面取得类型本身，也可以用在某个实例后面取得 这个实例本身。
let str: String = "lwlwl"
print(str.self)


class A {
    class func someFunc() {
        print("someFunc")
    }
}
print(A.self)
let typeA: A.Type = A.self
let typeAA: AnyClass = A.self
typeA.someFunc()
(typeAA as! A.Type).someFunc()

let btn = UIButton()
btn.isKind(of: UIButton.self)

protocol MyProtocol {
    
}
MyProtocol.self
//因为 Swift 默认情况下是不采用动态 派发的，因此方法的调用只能在编译时决定。
//printThem(Dog(), Cat())
// 将后者定义为前者
typealias BooleanLiteralType = Bool

let vie = UIView()
if vie is UIButton {
    print("wllw")
}else {
    print("qqq")

}
// 可变参数，即可变数量的参数
func sum(input: Int...) -> Int {
    return input.reduce(0, +)
}
sum(input: 1,2,3)
