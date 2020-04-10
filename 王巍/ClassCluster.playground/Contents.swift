import UIKit
//区别在于, public 修饰的类, 在模块外无法继承, 而 open 则可以任意继承, 公开度来说, public < open


let res = ["1", "@", "2", "3", "a"].map{Int($0)}
print(res)
protocol SomePro {
    associatedtype Element
    func someFunc(_ ele: Element) -> Void
//    func someFunc(_ ele: Element) -> Void

}

struct SomeInt: SomePro {
    typealias Element = Int
    
    func someFunc(_ ele: Int) {
        
    }

    
    
}


//OptionSetType
struct SomeOption: OptionSet {
    
    let rawValue: uint
    static let none = SomeOption([])
    static let opt1 = SomeOption(rawValue: 1)
    static let opt2 = SomeOption(rawValue: 1 << 1)
    
    
    
}


var thing = "cars"

let closure = { [thing] in
  print("I love \(thing)")
}
let closure2 = {
  print("I love \(thing)")
}
thing = "airplanes"

closure()
closure2()


(0 ..< 10).filter{$0 % 2 == 0}.map{"\($0)"}.reduce(""){$0 + $1}

var str = "Hello, playground"
//NSStringFromClass(type(of: str))
let b = 1.2345
let format = String(format: "%.2f", b)
print("\(format)")

struct YourOption: OptionSet {
    let rawValue: UInt
    
}
(0 ..< 10).map { (item) -> String in
    return "\(item)"
}

let int: Int = 0
let intNumber: NSNumber = int as NSNumber
String(validatingUTF8: intNumber.objCType)
