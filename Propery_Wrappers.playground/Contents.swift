import Foundation

@propertyWrapper
struct Age{
    private var number: Int = 0
    var wrappedValue: Int {
        get { return number }
        set { number = max(newValue, 1) }
    }
}


struct Person{
    @Age var age: Int {
//        get{
//            return __age
//        }set{
//            __age = newValue
//        }
        willSet{
            
        }didSet{
            
        }
    }
    
    private var _age: Int = 0
    private var __age: Int = 0
    
    init(age: Int){
        self.age = age
    }
}

let song = Person(age: -1)
print(song.age)

