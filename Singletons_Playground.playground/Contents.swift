import UIKit

class Singleton {
    
    static let shared = Singleton()
    
    var parentCounter = 0
    
    func incrementParentCount() {
        parentCounter += 1
        print("Value of parentCounter is \(parentCounter)")
    }
}

let singletonObject1 = Singleton.shared
singletonObject1.incrementParentCount()
singletonObject1.incrementParentCount()

let singletonObject2 = Singleton.shared
singletonObject2.incrementParentCount()
singletonObject2.incrementParentCount()

class SingletionSubClass : Singleton {
    
    var childCounter = 0
    
    func incrementChildCounter() {
        childCounter += 1
        print("Value of child Counter is \(childCounter)")
    }
    
    override func incrementParentCount() {
        self.parentCounter += 1
        print("Value of parentCounter is \(parentCounter)")
    }
}

let childSingletonObj1 = SingletionSubClass()
childSingletonObj1.incrementChildCounter()
childSingletonObj1.incrementParentCount()
childSingletonObj1.incrementParentCount()


class SingletonNoSubclassing {
    
    static let shared = SingletonNoSubclassing()
    
    var parentCounter : Int
    
    private init() {
        self.parentCounter = 0
    }
    
    func incrementParentCount() {
        parentCounter += 1
        print("Value of parentCounter is \(parentCounter)")
    }

}
