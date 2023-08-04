import UIKit
import Foundation

protocol HumanDelegate: AnyObject {
    func sendData()
}

class Human {
    var name: String?
    weak var delegate: HumanDelegate?
    init(name: String?) {
        self.name = name
    }
    func walk() {
        delegate?.sendData()
    }
}

class Men: HumanDelegate {
    
    func run() {
        
    }
    
    func sendData() {
        print("Data got from Human")
    }
}

//let human1 = Human(name: "Shiva")
//let men1 = Men()
//human1.delegate = men1
//human1.walk()


class Ploynedram {
    
    func checkIsPolyndram(pString: String) -> Bool {
        var temp = ""
        for str in pString {
            temp = "\(str)" + temp
        }
        return pString == temp ? true : false
    }
}

let p1 = Ploynedram()
let result = p1.checkIsPolyndram(pString: "1")

//result == true ? print("Give string is Polyndram") : print("Give string is not Polyndram")

let reverstring = "Shiva"
var revStr = ""
for i in reverstring {
    revStr = "\(i)" + revStr
}
//print(revStr)


//MARK: - Operations on array

var intArray = [1,2,3,1,5,2,3,6,8,4,9,6,7,8,9,4,5,6,2,4,6,1,2,3,5,9,8,8]

// find the duplicate ints and remove them from array
var temp = [Int]()
for val in intArray {
    if !temp.contains(val) {
        temp.append(val)
    }
}
//print(temp)


// Find the highest number in array

var highestVal = 0
[1, 2, 3, 5, 6, 8, 4, 9, 7]
for i in intArray {
    if highestVal <= i {
        highestVal = i
    }
}
//dump("The heights value in array is : \(highestVal)")

var lowestVal:Int = 0
for i in intArray {
    if lowestVal <= i && lowestVal != 0 {
    } else {
        lowestVal = i
    }
}
//dump("The low value in array is : \(lowestVal)")

// Array sum

let intar = [1, 2, 3, 5, 6, 8, 4, 9, 7] //= 45

var totla = 0

for i in intar {
    totla = i + totla
}
print(totla)

//var motto = "Bow ties are cool"
//let res = motto.replacingOccurrences(of: "Bow", with: "Neck")
//print(motto)
//print(res)
//
//var numbers = [1, 2, 3]
//numbers += [4]
//print(numbers)


//Compile time error
//final class Dog {
//    func bark() {
//        print("Woof!")
//    }
//}
//
//class Corgi : Dog {
//    override func bark() {
//        print("Yip!")
//    }
//}
//
//let muttface = Corgi()
//muttface.bark()



//run time error
//for i in 3...1 {
//    print(i)
//}



//Explanation: Structs have memberwise initialization as standard, but this is not available to classes. The code will fail to compile because the Starship class has no initializers.
//class Starship {
//    var type: String
//    var age: Int
//}
//
//let serenity = Starship(type: "Firefly", age: 24)
//print(serenity.type)



//var i = 2
//
//do {
//    print(i)
//    i *= 2
//} while (i < 128)

//Explanation: The do keyword is invalid here; the programmer should use repeat instead.


//let i = 3
//
//switch i {
//case 1:
//    print("Number was 1")
//case 2:
//    print("Number was 2")
//case 3:
//    print("Number was 3")
//}

//Explanation: Swift requires all switch statements to be exhaustive. This code will not compile because it does not have a default clause.

let i = "5"
let j = i + i

print(j)


let names = ["narayna", "shiva", "Nani", "ram"]

let fileterArray = names.filter { str  in
    str.lowercased().hasPrefix("n")
}

var temp = [String]()
for n in names {
    if let firstLatter = n.first {
        if firstLatter.lowercased() == "n" {
            temp.append(n)
        }
    }
}
print(temp)

let random = Int.random(in: 1...1000)
dump(random)


enum States {
    case InActive
    case Active
    case Forword
    case Backword
    case Pause
    case Stop
}

let state = States.Active

switch state {
case .Active:
    dump("Active")
case .InActive:
    dump("InActive")
case .Forword:
    dump("Forword")
case .Backword:
    dump("Backword")
case .Pause:
    dump("Pause")
case .Stop:
    dump("Stop")
}


enum StatesOfIndia: String, CaseIterable {
    case andrapradesh
    case telangana
    case karnataka
    case tamilanadu
    case maharastra
    case kerala
}

let myState = StatesOfIndia.allCases

for stat in myState {
    dump(stat.rawValue)
}

var grades = [85, 74, 90, 64, 82]
let pass = grades.allSatisfy { grade -> Bool in
    return grade > 50
}
dump(pass)

grades.removeAll { grade -> Bool in
    return grade < 75
}
dump(grades)


let languages = ["English", "French", "Spanish", "Greek", "Chinese", "Turkish"]
var germanExists = false
for language in languages {
    if language == "German" {
        germanExists = true
        break
    }
}
dump(germanExists)
