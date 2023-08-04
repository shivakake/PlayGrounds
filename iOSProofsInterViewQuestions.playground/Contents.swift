import UIKit
import Foundation

//MARK: - What are the different types of properties available?
//Stored Properties
//Computed Properties
//Lazy Properties
//Static Properties / Class Properties

//MARK: - Type Inference or implicitly datatype declaration
var typeInferInt = 10
let typeInferString = "Shiva"


//MARK: - Type Annotation or explicitly datatype declaration
var typeAnnotationInt: Int = 10
let typeAnnotationString: String = "Shiva"

//MARK: - Touples
// Touples are group of values into a single compound value/ single value.
var toupleValue1 = ("Shiva", 32)
//dump(toupleValue1.0)
//dump(toupleValue1.1)

var toupleValue2 = (name: "Shiva", age: 32)
//dump(toupleValue2.name)
//dump(toupleValue2.age)

var (name, age) = ("Shiva", 32)
//dump(name)
//dump(age)

//MARK: - String interpolation
var stringInterpolationValue = "Hi World, My name is \(name), i am \(age) years old"
//dump(stringInterpolationValue)

// MARK: - Optionals
// Optionals are the special data types that can holds the value of a variable or its absence/ nil value.
// Optional are enum type, because this can hold some , none of a variable.
// Optionals are must be declare with var.
// Use ? to declare the optionals in swift.

var optionaValue: String?
//print("Before value assign:", optionaValue)
//optionaValue = "Shiva"
//print("After value assign:", optionaValue)

// To extract the value from the optional value is a mechanisum/process of optional unwrapping.
// We have multiple methods to unwrap the optional values

// i. Implicit unwrapping
// Process of conveying to the compiler that the optional variable will definitely contains a value before it is used.
var implicitOptional: Int?
// ii. Force unwrapping
var forceOptional: Int!
// iii. Explicit unwrapping (Optional Binding & guard statement)
// Optional Binding
// Optional binding is one of the optional unwrapping techniques.
//The unwrapped value in optional binding is accessible with that block.
var optionalBinding: Int?
optionalBinding = 20
//dump(optionalBinding)
if let bindingValue = optionalBinding {
//    dump(bindingValue)
}
// Guard is one of the optional unwrapping techniques
// The unwrapped value in guard statement is accessible to the below statements.
func callGuardMethod() {
    guard let bindingValue = optionalBinding else { return }
    dump(bindingValue)
}
//callGuardMethod()
// Can we access the guard statement value in else block?
// No, we cant access the value in else block because ut is avalable of the else block.
//MARK: - Optional Chaining is process of accessing Optional’s sub properties which are again optionals.

//let res = anOptional?.subOptional?.subOptional
//let res = anOptional?.subOptional?.subOptional?.method()

//MARK: - What is nil coalescing operator (??)?
//Process of providing default value is optional doesn’t contain a value. Process of substituting a value if optional doesn’t contain a value.
let anOptional: Int?
anOptional = 10
let unwrapped = anOptional ?? 0

 //MARK: - What are the new operators available in swift?

/*
i) Closed Range Operators (a...b)
ii) Half Open Range operators (a..<b)
iii) One sided open range operators (...n, n...) Nil coalescing operator (??)
iv)Type Checking operator (is)
v)Type Considering Operator (as)
vi)Identify Operators (=== / !==)
*/

//MARK: - What is enum & Syntax?
// Enum is a keyword, which is used to define user defined datatype with user specified values.

enum WeekDay {
case MONDAY, TUESDAY, WEDNESDAY
case THURSDAY
case FRIDAY
}
//Enum with Raw Values:
enum WeekDay1: Int {
case MONDAY = 0, TUESDAY = 2, WEDNESDAY = 3
case THURSDAY = 4
case FRIDAY = 5
}
//Enum with Associated Values:
//A enum case which is capable of holding additional information.
enum Errors {
case unknownError
case httpError(Int, String)
case networkError(String)
}
//Here, httpError case holds Int and String, networkError holds String


//MARK: - What is Struct & Syntax?
//struct is a keyword to create user defined datatype.structure variables are value types
//Note: Swift structs does contain methods also.

struct Structures {
    let name = "Shiva"
    let address = "Hyderabad"
    let age = 29
    
    func display() {
        print(name)
        print(age)
        print(address)
    }
}

let stru = Structures()
//stru.display()

//MARK: - What is mutating method?
//The structure variables can’t be modified in structure methods. To modify properties of a structure we use mutating keyword as below.
struct Book {
    var name = "Shiva"
    var price = 12.5
    mutating func modifyableMethod() {
        name = "Swift"
        price = 22.50
    }
}



