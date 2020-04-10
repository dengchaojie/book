//: [Previous](@previous)

import Foundation

var str = "Hello, playground"


class ClassA {
    
}

class ClassB: ClassA {
    
}

let obj1: AnyObject = ClassB()
if obj1 is ClassA {
    print("ClassA")
}

if obj1 is ClassB {
    print("ClassB")
}

extension Int {
    func times(f: ((Int) -> Void)) -> Void {
        print("int")
        for i in 1...self {
            print(i)
        }
    }
}

3.times { (i) in
    print("lslsl")
    print(i)
}



//: [Next](@next)
