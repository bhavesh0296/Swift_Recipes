import UIKit

/*:
## Interview Question
 **Build a highter ordre funcatino just like Map, or Build its clone**
*/

extension Sequence {
    public func mapClone<T>(_ transform: (Element) -> T) -> [T] {
        var result = [T]()
        for element in self {
            result.append(transform(element))
        }
        return result
    }
}

var list = [1, 2, 3, 4, 5, 6, 89]

var stringList = list.mapClone { (value) in
    return "Value: \(value)"
}

print(stringList)


/*:
 ## Problem 6-1, 6-2, 6-3, 6-4, 6-5, 6-6, 6-7, 6-8

 **We want to define a barebones class.**

 **I want to define a class with instance variables.**

 **I want to define a class with instance methods.**

 **I want to define a class with type methods.**

 **I want to define a class with default initializers.**

 That is: The – so-called – default initializer simply creates a new instance, with all of its properties set to their default value.

 **I want to define a class with convenience initializers.**

Convenience initializers are nothing but a shortcut to “regular” initializers, using a common initialization pattern, which will save time or make initialization more self-explanatory.

 **I want to define a class with multiple initializers.**

 **I want to define a class with multiple methods with the same name..**



*/

class Person {
    var name: String = "Bob"
    var age: Int = 32

    init() { }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    convenience init(name: String, dob: Int) {
        let age = 2021 - dob
        self.init(name: name, age: age)
    }

    init(name: String, age: String) {
        self.name = name
        self.age = Int(age) ?? 10
    }

    class func getAboutPerson() -> String {
          return "This method used to save person details"
      }


    func sayHello(){
        print("\(name) says: Hello")
    }

    func sayHello(to whom: String) -> String {
        return "\(name) says: Hello \(whom)"
    }

    func sayHello(to whom: String, with greeting: String) -> String {
        return "\(name) says: \(greeting) \(whom)"
    }

}

extension Person: CustomStringConvertible {
    var description: String {
        return "Name: \(name), Age: \(age)"
    }
}

let bhavesh = Person(name: "Bhavesh", age: 25)
bhavesh.sayHello()

print(Person.getAboutPerson())

let person = Person()
print(person.name, person.age)


let person2 = Person(name: "Martin", dob: 1990)
print(person2)

let person3 = Person(name: "James", age: "30")
print(person3)

print(person2.sayHello(to: "Martin"))
print(person3.sayHello(to: "Luther", with: "hey!!!"))


/*:
## Problem 6-9, 6-10
 **I want to define a class that inherits another class.**

 **I want to extend an existing class.**
*/

class Vehicle {
    public var name: String
    public var wheels: Int
    public var enginePower: Int

    init(name: String, wheels: Int, enginePower: Int) {
        self.name = name
        self.wheels = wheels
        self.enginePower = enginePower
    }

    func printDetails() {
        print("Vehicle: \(name) of \(wheels) wheels with power \(enginePower)")
    }

}

class Car: Vehicle {
    public var model: Model

    enum Model: String {
        case budget
        case medium
        case modern
    }

    init(name: String, wheels: Int, enginePower: Int, model: Model) {
        self.model = model
        super.init(name: name, wheels: wheels, enginePower: enginePower)
    }
}

extension Car {

    func getModel() -> String {
        return model.rawValue
    }
}

let vehicle = Vehicle(name: "Truck", wheels: 4, enginePower: 3000)
vehicle.printDetails()

let car = Car(name: "Covate", wheels: 4, enginePower: 1800, model: .modern)
car.printDetails()

print(car.getModel())


/*:
## Problem 6-11

 **I want to create and use a singleton class.**

*/

class CustomFileManager {

    static let shared: CustomFileManager = CustomFileManager()

    private init() { }

    func open(file name: String) {

    }
}


/*:
## Problem 6-12

 **I want to define and use a closure.**

*/

let sayHelloClosure: () -> Void =  {
    print("Hello Everyone!!!")
}

func execute(closure: () -> Void) {
    closure()
}


execute(closure: sayHelloClosure)

sayHelloClosure()

/*:
## Problem 6-13

 **I want to define and use a closure that takes arguments..**

 In contrast with “normal” functions, you must not use the argument labels.

  **I want to define and use a closure that returns some value.**

 Closures can have arguments, as normal functions do. And they can also return a value – in exactly the same fashion as normal functions.

*/

let isOddEvenClosure: (Int) -> String = { (value: Int) in
    return value % 2 == 0 ? "Even" : "Odd"
}

print(isOddEvenClosure(89))


/*:
## Problem 6-15, 6-16

 **I want to define and use an inline closure.**

 ‘Inline’ means we’ll define it and use it at the same place, without the need of a separate definition.

 ## Important: Into this closure we put () brackets at end to call clousre

 **I want to define and use an inline closure that also takes some arguments.**

 ## Important: Into this closure we put () brackets at the end with the Argeument passed into the clousre

 **I want to define and use an inline closure that takes some arguments using the “shorthand” notation.**

 ## print((+)(20+9)) Understand this syntax

*/

execute {
    print("execure is running")
}

let inline = {
    print("Inline closure example")
}()


let inlineWithArgument =  {(value: Int) in
    print(value % 2 == 0 ? "Even" : "ODD")
}(108)

let inlineClosureWithShortEnd = { print($0) }(6)

print({(a: Int, b: Int) -> Int in a+b}(3,5))
print({a,b -> Int in a+b}(10,9))
print({a,b in a+b}(90, 5))
print({$0 + $1}(100, 200))
print((+)(20+9))




/*:
## Problem 7-1
 **I want to append a character to an existing string.**
*/

var hello = "Hello"
hello.append("!")
print(hello)

// OR

let char: Character = "!"
hello = hello + String(char)
print(hello)


/*:
## Problem 7-2
 **I want to append a string to another string.**
*/

var greeting = "Bonjour"
let name = "Bhavesh"

let greetingName = greeting + " " + name

greeting.append(name)

print(greetingName)
print(greeting)



/*:
## Problem 7-3
 **I want to check if a given object is of String type.
**
*/

let testString: Any = "TestString"
if testString is String {
    print("\(testString) is string")
} else {
    print("It is not a String")
}


/*:
## Problem 7-4
 **I want to check if a string contains a specific character.**
*/

let text = "The quick brown fox jumps over the lazy little dog."
print(text.contains("b"))

/*:
## Problem 7-5
 **I want to check if a string contains a given regular expression.**

## Important: Have to search about it
*/

let containsRegex = text.range(of: "\\d", options: .regularExpression) != nil
print(containsRegex)

/*:
## Problem 7-6
 **I want to check if a string contains another string.**

*/

let isStringContains = text.contains("quick")
print(isStringContains)

/*:
## Problem 7-6
 **I want to check if a string ends with a given regular expression..**

## Important: Have to search about it
*/

// TODO: - have to write code here

/*:
## Problem 7-7
 **I want to check if a string ends with a given string.**

*/

let isStringEnds = text.hasSuffix("dog.")
print(isStringEnds)

/*:
## Problem 7-9
 **I want to check if a string is empty.**

*/

print(text.isEmpty)

/*:
## Problem 7-10
 **I want to check if a string starts with a regular expression.**

## Important: Have to search about it
*/

// TODO: - have to write code here


/*:
## Problem 7-11
 **I want to check if a string starts with another string.**

*/

let isStringStarts = text.hasPrefix("The")
print(isStringStarts)

/*:
## Problem 7-12
 **I want to check if two strings are equal, that is: the same.**

*/

let text2 = "The quick brown fox jumps over the lazy little dog."

print(text == text2)


/*:
## Problem 7-13
 **I want to compare two string lexicographically, that is: which one comes first in a dictionary.**

*/

let firstString = "Hello"
let secondString = "Bye"

if firstString > secondString {
    print("it is lexicographically greater")
}


/*:
## Problem 7-14
 **I want to concatenate two different strings.**

*/

let resultString = firstString + secondString
print(resultString)

/*:
## Problem 7-15
 **I want to capitalize a given string, that is: convert the first character of each word to uppercase.**

*/

print(text.capitalized)

print(text.uppercased()) // convert each character to upper case

/*:
## Problem 7-16
 **I want to convert a string to a Data object.**

 ## Important:

*/

let stringData = text.data(using: .utf8)


/*:
## Problem 7-17
 **I want to extract a value from a String as a Double.**

*/

let textDouble = "20.04"

let valueDouble = Double(textDouble)
print(valueDouble)


/*:
## Problem 7-18
 **I want to extract a value from a String as a Float.**
*/

let floatStringValue = Float(textDouble)
print(floatStringValue)

/*:
## Problem 7-19
 **I want to extract a value from a String as an Int.**
*/

let intText = "20"
let intValue = Int(intText)
print(intValue)


/*:
## Problem 7-20, 7-21
 **I want to convert a given string to lowercase.**

 **I want to convert a given string to uppercase.**

*/

print(text.lowercased())

print(text.uppercased())


/*:
## Problem 7-22
 **I want to create an empty String.**
*/

let emptyString = ""
print(emptyString)

/*:
## Problem 7-23
 **I want to create a String from an NSString object.**
*/

let nsString = NSString(string: text)
print(nsString)


/*:
## Problem 7-24
 **I want to detect a phone number within a given String.**

 ## Important: Have to search it
*/





/*:
## Problem 7-25
 **I want to detect a URL in a given String.**

  ## Important: Have to search it
*/


/*:
## Problem 7-26, 7-27
 **I want to format a number contained in a String, adding leading zeros..**

 **I want to format a number contained in a given String, specifying the number of decimal places.**

  ## Important: Have to search it
*/

let a = 20
let b = 90
let c = 3.13423424

let strA = String(format: "%04d", a)
let strB = String(format: "%010d", b)
let strC = String(format: "%.2f", c)  // have to check this one

print(strA, strB, strC)


/*:
## Problem 7-28, 7-29
 **I want to format a given string by adding some left padding, with a number of spaces.**

 **I want to format a given string by adding some right padding, with a number of spaces.**

  ## Userful: Have to search it
*/



/*:
## Problem 7-30
 **I want to generate a UUID string.**
*/

let unique = UUID().uuidString
print(unique)


/*:
## Problem 7-32
 **I want to get the character at specific index of a given String.**
*/

let charIndex = text.firstIndex(of: "q")
print(charIndex)

let charAtIndex6 = text.index(text.startIndex, offsetBy: 8)
print(text[charAtIndex6])



/*:
## Problem 7-32
 **I want to get the first characters from a given String.**
*/

let startIndex = text.startIndex
let endIndex7 = text.index(startIndex, offsetBy: 7)
let subString = text[startIndex...endIndex7]

print(subString)




/*:
## Problem 7-33
 **I want to get the index of a specific character within a given String.**
*/

let indexOfP = text.firstIndex(of: "p")
print(indexOfP) // string index is used only at character




/*:
## Problem 7-34
 **I want to get the index of a string within a given String.**

 ### into this have to use range
*/

let indexSubstringRange = text.range(of: "quick")

if let indexSubstringUnwrap = indexSubstringRange {
    let subString = text[indexSubstringUnwrap]
    print(subString)
}


/*:
## Problem 7-35
 **I want to get the last characters from a given String.**
*/

let indexFrom = text.index(text.startIndex, offsetBy: 20)

let indexTo = text.endIndex

let subStringEndValue = text[indexFrom..<indexTo]
print(subStringEndValue)
//

/*:
## Problem 7-36
 **I want to get the length of a given String.**
*/

print(text.count)


/*:
## Problem 7-37
 **I want to get the length of a Unicode String.**

 ### In Swift, using Unicode characters in string, works practically out of the box.
*/
let unicodeString = "日本語"
print(unicodeString.count)


/*:
## Problem 7-38
 **I want to get a specific substring, from a specific range, within a given String..**
*/

let startingRangeValue = text.startIndex
let endingRangeValue = text.index(startingRangeValue, offsetBy: 14)

let rangeString = text[startingRangeValue..<endingRangeValue]
print(rangeString)


/*:
## Problem 7-39
 **I want to iterate over the characters contained in a given String..**
*/


text.forEach { char in
    print(char)
}

/*:
## Problem 7-40
 **I want to repeat a given String several times..**
*/

let helloText = "Hello "
let helloRepeatText = String(repeating: helloText, count: 10)
print(helloRepeatText)


/*:
## Problem 7-41
 **I want to check if a String starts with another String..**
*/

print(text.hasPrefix("The"))

/*:
## Problem 7-42
 **I want to replace a String within another String, given a specific range..**

 ### Important:
*/
var replaceText = "The quick brown fox jumps over the lazy little dog"
let replaceStartingIndex = replaceText.index(replaceText.startIndex, offsetBy: 8)
let replaceEndIndex = replaceText.index(replaceText.startIndex, offsetBy: 20)

replaceText.replaceSubrange(replaceStartingIndex..<replaceEndIndex, with: " Heyy ")

print(replaceText)


/*:
## Problem 7-43
 **I want to replace a String within another String..**
*/

let subReplaceRange = replaceText.range(of: "dog")

if let subReplaceRangeUnwrap = subReplaceRange {
    replaceText.replaceSubrange(subReplaceRangeUnwrap, with: "Kangoo")
    print(replaceText)
}


/*:
## Problem 7-44
 **I want to reverse a String..**
*/

var reverse = String(text.reversed())
print(reverse)

/*:
 ## Problem 7-45

 **I want to split a given String into lines.**
*/

var splitStingList = text.split(separator: " ")
print(splitStingList)


/*:
 ## Problem 7-46

 **I want to split a given String by words.**

 ### Important: Have to search about it
*/


/*:
 ## Problem 7-47

 **I want to split a given String into an array using a specific separator.**
*/

let separaterString = text.split(separator: " ")
print(separaterString)

let separaterByComponents = text.components(separatedBy: " ")
print(separaterByComponents)


/*:
 ## Problem 7-48

 **I want to trim characters in a given String.**



*/


let trimStringChracterInput = "hey     hello bye"

let trimStringCharacterOutput = trimStringChracterInput.trimmingCharacters(in: CharacterSet(charactersIn: "he"))
print(trimStringCharacterOutput)



/*:
 ## Problem 7-49

 **I want to trim all whitespace in a given String.**
*/


let trimStringInput =  "         hey     hello bye     "
let trimStringWhiteSpaceOutput = trimStringInput.trimmingCharacters(in: .whitespaces)
print(trimStringWhiteSpaceOutput)

/*:
 ## Problem 7-50

 **I want to “include” an expression – string, number or whatever-that-may- be – within a String literal..**
*/

let nameValue = "Bhavesh"
let ageValue = 25

print("My name is \(nameValue), I an \(ageValue) years old")



/*:
 ## Problem 7-51

 **I want to include Unicode characters in a String literal.**
*/

let aUnicode = "日本語 = Japanese"
let bUnicode = "You really \u{2665} Swift, don't you?"

print(aUnicode)
print(aUnicode)
