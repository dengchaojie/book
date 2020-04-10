import UIKit
import Foundation

//var str = "Hello, playground"


typealias Task = (_ cancel: Bool) -> Void

func delay(_ time: TimeInterval, task: @escaping () -> ()) -> Task? {
    
    var result: Task?
    var closure: (() -> ())? = task
    let delayedClosure: Task = {
        cancel in
        if let internalClosure = closure {
            if cancel == false {
                DispatchQueue.main.async(execute: internalClosure)
            }
        }
        closure = nil
        result = nil
    }
    
    result = delayedClosure
    
    func dispatch_later(block: @escaping () -> ()) {
        let t = DispatchTime.now() + time
        DispatchQueue.main.asyncAfter(deadline: t, execute: block)
    }
    
    dispatch_later {
        if let delayedClo = result {
            delayedClo(false)
        }
    }
    return result
}


func cancel(_ task: Task?) {
    task?(true)
}


let task = delay(5) {
    print("110")
}

cancel(task)
