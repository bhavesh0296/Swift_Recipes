import UIKit

/*:
 ## Problem 1-1
 **You’d like to execute and compile a simple Swift program that you just created.**
 */
print("Hello World!")




/*:
 ## Problem 2-2
 **We want to declare some variables.**
*/

var name = "Bhavesh"



/*:
 ## Problem 2-3
 **We want to declare some constants.**
**
*/

let age: Int = 30



/*:
 ## Problem 2-4
 **I want to declare multiple variables.**
*/

var red, green, blue: UIColor


/*:
 ## Problem 2-5
 **AI want to declare constants and variables with Unicode names.**

 In Swift, constant and variable names can contain almost any character, including Unicode characters.

*/

var aiUnicode = "好好"


/*:
 ## Problem 2-6
 **I want to declare a range.**

*/
var range = 2...6

print(range)

/*:
 ## Problem 2-7
 **I want to define an Enumeration.**

 An Enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code. In Swift, this can be easily done by using the enum keyword.

*/

enum TraifficLight {
    case red
    case yellow
    case green
}

/*:
 ## Problem 2-8
 **I want to define a type alias.**

 A Type Alias declares an alternative name for an existing type. In swift, in order to define a new type alias, you may use the keyword typealias.

*/

typealias completion = () -> Void


/*:
 ## Problem 2-9
 **I want to be able to use semicolons.**

*/

var firstName = "Bhavesh";
var lastName = "Gupta";
print("\(firstName) \(lastName)")


/*:
 ## Problem 2-10
 **I want to be able to use comments in my code.**

*/

// Hey I am comment of Single Line

/*
 Hey I am multi line comment
 */


/*:
 ## Problem 3-1
 **I want to write a simple if statement**

*/

if 10 % 2 == 0 {
    print("It is even number")
}

/*:
 ## Problem 3-2
 **I want to write a simple if / else statement.**

*/

var number = 23

if number % 2 == 0 {
    print("It is even")
} else {
    print("It is odd")
}

/*:
 ## Problem 3-3
 **I want to write multiple if, or if / else statements.**

*/

var number1 = 45
var number2 = 45

if number1 > number2{
    print("\(number1) is greater than \(number2)")
} else if number2 > number1 {
    print("\(number2) is greated thatn \(number1)")
} else {
    print("\(number1) is equal to \(number2)")
}


/*:
 ## Problem 3-4, 3-6
 **I want to write a switch statement.**

 **I want to write a switch statement, making use of enumerations.**
*/

enum Direction {
    case east
    case west
    case north
    case south
}

var direction: Direction = .north

switch direction {
case .east:
    print("It is east direction")
case .west:
    print("It is west direction")
case .north:
    print("It is north direction")
case .south:
    print("It is south direction")
}

/*:
 ## Problem 3-5

 ** want to write a switch statement, but using intervals – instead of values – for the different cases.**

*/

let marks = 90

switch marks {
case 0..<50:
    print("pass")
case 50..<70:
    print("Second Division")
case 70..<90:
    print("First Division")
case 90...100:
    print("Excellent Merit")
default:
    print("Not a valid value")
}


/*:
 ## Problem 3-3
 **I want to write a switch statement with multiple values for each case..**

*/

var value = 50

switch value {
case 20,30,50:
    print("jackpot")
default:
    print("Lose it")
}

/*:
 ## Problem 3-8
 **I want to write a switch statement, using tuples for each case.**

*/

let center = (2,0)

switch center {
case (0,0):
    print("It is center value")
case (_,0):
    print("It is on x axis \(center.0) ")
case (0, _):
    print("It is on y axis \(center.1)")
default:
    print("it is into the plane")
}

/*:
 ## Problem 3-9
 **I want to write a switch statement, while also catching the different matched values..**

*/

var valueSwitch: Int? = 20

switch valueSwitch {
case let value:
    print("we have value \(value)")
}

/*:
 ## Problem 3-10
 **I want to use the ternary conditional operator - ?.**

*/

let oddEven = value % 2 == 0 ? "True" : "False"

print(oddEven)


/*:
 ## Problem 3-11
 **I want to use the nil coalescing operator - ??.**

 Basically, it’s the equivalent of: a != nil ? a! : b.

*/

let movieRating: Int? = nil

print(movieRating ?? 1)

/*:
 ## Problem 3-12
 **I want to use the logical and operator.**

*/

let isWorkingHard = true
let isConsistent = true

if isWorkingHard && isConsistent {
    print("You will get success")
} else {
    print("Success is far away")
}


/*:
 ## Problem 3-13
 **I want to use the logical not operator.**

*/

var array = [1, 3, 4]

if !array.isEmpty {
    print("array is not empty it has elements count: \(array.count)")
}

/*:
 ## Problem 3-14
 **I want to use the logical or operator..**

*/

if isWorkingHard || isConsistent {
    print("Success will come, but it will take time")
}



/*:
 ## Problem 3-15
 **I want to use the logical xor operator.**

 ### A XOR B => A != B

*/

if isConsistent != isWorkingHard {
    print("There is something missing")
} else {
    print("You may get or not")
}

/*:
 ## Problem 4-1
 **I want to write a for loop..**
*/

for i in 0...5 {
    print("index: \(i)")
}

/*:
 ## Problem 4-2
 **I want to write a While loop..**
*/

var index = 0
while  index < 5 {
    index += 1
    print("Hello World")
}


/*:
 ## Problem 4-3
 **I want to write a Repeat-While loop.**
*/

repeat {
    print("Hello ")
    index += 1
} while index < 10


/*:
 ## Problem 5-1, 5-2
 **I want to define and call a new function from scratch.**

 **I want to define and call a function that takes arguments.**
*/

func sayHello(to name: String) {
    print("Hello \(name), Welcome to Swift Recipe!!!")
}

sayHello(to: "Bhavesh")

/*:
 ## Problem 5-3, 5-4
 **I want to define and call a function that takes arguments with argument labels..**

 **I want to define and call a function without argument labels.**
*/

func reading(_ book: String, by name: String) {
    print("\(name) is reading \(book)")
}

reading("Swift Recipe", by: "Bhavesh")


/*:
 ## Problem 5-5
 **I want to define and call a function, using default values.**
*/

func greet(_ name: String, with word: String = "Hey") {
    print("\(word) \(name)")
}

greet("Bhavesh", with: "Hello")
greet("Bhavesh", with: "Bonjour")
greet("Bhavesh")


/*:
 ## Problem 5-6
 **I want to define and call a function that returns some value.**
*/

func getIntroduction(_ name: String, with age: Int, profession: String) -> String {
    return "My Name is \(name), I am \(age) years old. I am \(profession)"
}

let introduction = getIntroduction("Bhavesh", with: 25, profession: "iOS Developer")
print(introduction)

/*:
 ## Problem 5-7
 **I want to define and call a function that returns multiple values.**
*/

@discardableResult
func divide(_ a: Int, with b: Int) -> (Int, Int) {
    let quotient = a / b
    let remainder = a % b
    return (quotient: quotient, remainder: remainder)
}

let result = divide(37, with: 5)
print(result)

/*:
 ## Problem 5-8
 **I want to call a function but ignore its return value.**
*/

// 1- way using @discardable Result
divide(48, with: 7)

//2- way using underscore wild card
let _ = divide(90, with: 14)

/*:
 ## Problem 5-9
 **I want to define and call a function with in-out arguments, so that I can pass arguments “by reference.”**

 #### We’ll do that as usual, only we’ll put an & in front of the variable, in order to pass it “by reference” – so that the function can actually alter it.
*/

class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

extension Person: CustomStringConvertible {
    var description: String {
        return "\(name) : \(age)"
    }
}

var bhavesh = Person(name: "Bhavesh", age: 25)
print(bhavesh)

func incrementAge(_ person: inout Person) {
    person.age += 1
}
incrementAge(&bhavesh)
print(bhavesh)


/*:
 ## Problem 5-10
 **I want to define and call a function with variadic arguments, that is: with an unspecified number of arguments.**
*/

func sum(_ values: Int...) -> Int {
    return values.reduce(0) { $0 + $1 }
}

let sumOfValues = sum(1, 4, 5, 2, 23, 90, 123)
print(sumOfValues)

/*:
 ## Problem 5-11
 **I want to define and call a function that takes a closure as argument.**

 ## IMPORTANT: Asks into many interview questions
*/

func task(completion: (_ taskName: String) -> Void) {
    completion("Reading")
}

task { taskName in
    print("\(taskName) the task here")
}

func perform(_ a: Int, _ b: Int, action: (Int, Int) -> Int) -> Int {
    return action(a,b)
}

let sumAction = { (a: Int, b: Int) -> Int in
    return a + b
}

let multiplyAction = { (a: Int, b: Int) -> Int in
    return a * b
}

let sumNumber = perform(6, 7, action: sumAction)
print(sumNumber)

let multiplyNumber = perform(4, 89, action: multiplyAction)
print(multiplyNumber)


/*:
 ## Problem 5-12
 **I want to call a function with a trailing closure argument.**

 ## IMPORTANT: Asks into many interview questions
*/

let subtractNumber = perform(20, 8) { (a, b) -> Int in
    return a - b
}
print(subtractNumber)

let subtractNumberComplex = perform(20, 7) { $0 - $1 }
print(subtractNumberComplex)


/*:
 ## Problem 5-13, 5-14
 **I want to define and call a function that takes arguments of a generic type, that is: without a specific already-known type.**

 **I want to define and call a function that takes arguments of a generic type but with constraints, that is: without a specific already-known type but conforming to some specific protocol.**

 ## IMPORTANT: Asks into many interview questions
*/

//func sumGeneric<T: Decimal>(_ a: T, _ b: T) -> T {
//    return a + b
//}

//sumGeneric(60, 80)

/*:
 ## Problem 5-15
 **I want to define and call nested functions.**
*/

func greeting(_ name: String, dobYear: Int) -> String{
    func getAge(from dobYear: Int) -> Int {
        return 2021 - dobYear
    }

    return "\(name): \(getAge(from: dobYear))"
}

print(greeting("Bhavesh", dobYear: 1990))
