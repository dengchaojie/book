//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func addTo(_ adder: Int) -> ((Int) -> Int) {
    return {
        num in
        return num + adder
    }
    
}


let addTwo = addTo(2)
addTwo(10)

let addThree = addTo(3)
addThree(19)


func greaterThan(_ comparer: Int) -> ((Int) -> Bool) {
    return {
        num in
        num > comparer
    }
}

let greaterThan10 = greaterThan(10)
greaterThan10(23)

//: [Next](@next)
