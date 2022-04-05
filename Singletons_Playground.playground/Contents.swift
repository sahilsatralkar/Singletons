import UIKit

class Singleton {
    static let shared = Singleton()
    
    private init() {
        
    }
    private var number = 1
    func printSomething() {
        number += 1
        print("This is printSomething = \(number)")
    }
}


let testObj = Singleton.shared
//testObj.printSomething()


class SingletionSub : Singleton {
    func printSingletonSub() {
        print("This is printSingletonSub")
    }
    override func printSomething() {
        print("printSomething from SingletonSub class")
    }
}

let testObjSingSubclass = SingletionSub()

testObjSingSubclass.printSingletonSub()
testObjSingSubclass.printSomething()

let test = Singleton()
test.printSomething()
test.printSomething()
testObj.printSomething()
