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
## Interview Question
 **Give the dictionary of the character count into a String**
*/

let textInputString = "The quick brown fox jumps over the lazy little dog."

var dictCharacterCount = textInputString.reduce(into: [:]) {
    $0[$1, default: 0] += 1
}
print(dictCharacterCount)


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




/*:
 ## Problem 8-1

 **I want to append an array to an existing array..**
*/

let arr1 = [3, 4, 5]
let arr2 = [9, 10, 11]
var appendArray = arr1 + arr2
print(appendArray)


/*:
 ## Problem 8-2

 **I want to append an item to an existing array..**
*/

appendArray.append(100)
print(appendArray)



/*:
 ## Problem 8-3

 **I want to check if an array contains a specific item.**
*/

print(appendArray.contains(100))





/*:
 ## Problem 8-4

 **I want to check if an array is empty.**
*/

print(appendArray.isEmpty)




/*:
 ## Problem 8-5

 **I want to check if an object is of type Array.**
*/

print(appendArray is [Int])


/*:
 ## Problem 8-6

 **
 I want to check if two different arrays are equal..**
*/

let checkArray = [1, 2, 3]
let checkArray2 = [1, 2, 3]

print(checkArray == checkArray2)




/*:
 ## Problem 8-7

 **I want to check if two different tuples are equal..**
*/

let tuple1 = (20, "Bhavesh")
let tuple2 = (20, "Bhavesh")
print(tuple1 == tuple2)



/*:
 ## Problem 8-8

 **I want to combine two different arrays into an array of tuples, with the elements from both of the initial arrays..**
 ## Important: Into this you get used zip and map function
*/

let combineArray = zip(arr1, arr2).map { ($0, $1)}
print(combineArray)


/*:
 ## Problem 8-9

 ** I want to combine two different arrays into one dictionary, containing the elements from both of the initial arrays, in the form of key-value pairs.**

 ##Important:
*/

var dict: [Int:Int] =  [:]
zip(arr1, arr2).forEach { dict[$0] = $1 }
print(dict)

let dictReduce = zip(arr1, arr2).reduce(into: [:]) {
    $0[$1.0] = $1.1
}

print(dictReduce)


/*:
 ## Problem 8-10

 **I want to concatenate two different arrays.**
*/

let concatArray = arr1 + arr2
print(concatArray)




/*:
 ## Problem 8-11

 **I want to convert an array to an enumerated sequence.**
*/

let enumaredArray = concatArray.enumerated()
for (index, value) in enumaredArray {
    print("\(index): \(value)")
}

/*:
 ## Problem 8-12

 **I want to convert an array to its JSON string representation.**

 ## Important:
*/

var jsonValue = concatArray

do {
    let json = try JSONSerialization.data(withJSONObject: jsonValue, options: .prettyPrinted)
    let stringJson = String(data: json, encoding:  .utf8)
    print(stringJson ?? "")


} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 8-13

 **I want to convert an array to an enumerated sequence.**
*/





/*:
 ## Problem 8-11

 **I want to convert an array to an enumerated sequence.**
*/






/*:
 ## Problem 8-11

 **I want to convert an array to an enumerated sequence.**
*/






/*:
 ## Problem 8-11

 **I want to convert an array to an enumerated sequence.**
*/





/*:
 ## Problem 8-11

 **I want to convert an array to an enumerated sequence.**
*/





/*:
 ## Problem 8-11

 **I want to convert an array to an enumerated sequence.**
*/
let arrayList = ["one", "Two", "Three", "Four", "Five"]

for (index, element) in arrayList.enumerated() {
    print("\(index): \(element)")
}


/*:
 ## Problem 8-12

 **I want to convert an array to its JSON string representation.**
*/

if let jsonString = try? JSONSerialization.data(withJSONObject: arrayList, options: .prettyPrinted) {
    print(jsonString)
    print(String(data: jsonString, encoding: .utf8) ?? "")
}


/*:
 ## Problem 8-13

 **I want to convert a JSON string representation to an Array object.**
*/

let jsonString = """
[
  "one",
  "Two",
  "Three",
  "Four",
  "Five",
"akjsdhf"
]
"""

if let data = jsonString.data(using: .utf8) {
    if let jsonList = try? JSONSerialization.jsonObject(with: data, options: []) as? [String] {
        print(jsonList)
    }
}


/*:
 ## Problem 8-14

 **I want to create a String object from a given Character Array..**
*/

let arr : [Character] = ["H", "e", "l", "l", "o", "!"]

let valueString = String(arr)

print(valueString)


/*:
 ## Problem 8-15

 **I want to create an array from a given range.**
*/

let rangeArray = Array(0...10)
print(rangeArray)



/*:
 ## Problem 8-16

 **I want to create an array from a given stride.**
*/

let strideRange = stride(from: 0, to: 10, by: 2)

let arrayStride = Array(strideRange)
print(arrayStride)


/*:
 ## Problem 8-17, 8-18

 **I want to create an array from an Array literal.**

 **Create an empty array**
*/

var arrayLiteral = [1, 2, 3, 3, 4, 6, 8, 8]


/*:
 ## Problem 8-19

 **I want to create an NSArray object from a given array.**

*/

let nsArray = NSArray(array: arrayLiteral)
print(nsArray)


/*:
 ## Problem 8-20

 **I want to create a set from an Array literal.**

*/

let setLiteranl: Set<Int> = Set(arrayLiteral)
print(setLiteranl)


/*:
 ## Problem 8-21

 **I want to filter a given array’s elements by a specific condition.**

*/

let filterEvenArray = arrayLiteral.filter { $0 % 2 == 0}
print(filterEvenArray)





/*:
 ## Problem 8-22

 **I want to get an array element at a specific index.**

*/

let arrayAtIndex = arrayLiteral[2]
print(arrayAtIndex)



/*:
 ## Problem 8-23

 **I want to retrieve the values in a given dictionary as an array.**

*/

let dictLiteral: [String: String] = ["Name" : "Bhavesh",
                                     "Age": "20",
                                     "Profession": "iOS App Developer"]

let dictValuesList = dictLiteral.values
print(dictValuesList)






/*:
 ## Problem 8-24

 **I want to get an array of valid indices for a given array..**

*/

let validIndcides = arrayLiteral.indices
print(validIndcides)




/*:
 ## Problem 8-25

 **I want to get the total capacity of a given array.**

  #### Note the capacity of an array is not necessarily the same as the number of elements it currently contains.

*/

let arrayCapacity = arrayLiteral.capacity

print(arrayCapacity)



/*:
 ## Problem 8-26, 8-29

 **I want to get the index of a specific element in a given array by its value.**

*/

let indexForValue = arrayLiteral.index(of: 8) //arrayLiteral.firstIndex(of: 8)
print(indexForValue)

/*:
 ## Problem 8-27

 **I want to get an array’s first element.**

*/

print(arrayLiteral.first)


/*:
 ## Problem 8-28

 **I want to retrieve the first elements from a given array.**

*/

let firstIndexElements = arrayLiteral[0..<4]
print(firstIndexElements)


let firstIndexElements2 = arrayLiteral.prefix(3)
print(firstIndexElements2)


/*:
 ## Problem 8-31

 **I want to get the last element of a given array.**

*/

print(arrayLiteral.last)



/*:
 ## Problem 8-32

 **I want to retrieve the last elements from a given array.**

*/

print(arrayLiteral.suffix(3))



/*:
 ## Problem 8-33, 8-34

 **I want to retrieve the maximum value from a number array.**

 **I want to retrieve the minimum value from a number array.**

*/

print(arrayLiteral.max())
print(arrayLiteral.min())

/*:
 ## Problem 8-35

 **I want to retrieve a random element from a given array.**

*/

let randomElement = arrayLiteral.randomElement()

print(randomElement)

/*:
 ## Problem 8-36

 **I want to get the size of a given array..**

*/

print(arrayLiteral.count)


/*:
 ## Problem 8-37

 **I want to retrieve a tuple element by its index.**

*/

let point = (2, 3, 4)
print(point.2)


/*:
 ## Problem 8-38

 **I want to get a specific tuple element by matching against a given pattern.**

*/

let (x, y, z) = point
print(y)

/*:
 ## Problem 8-39

 **I want to insert an element at a specific array index.**

*/

arrayLiteral.insert(100, at: 3)
print(arrayLiteral)

/*:
 ## Problem 8-40

 **I want to join the elements of a string array, using a specific separator.**

 ### IMPORTANT: it working only string array

*/

let joinArray = ["one", "two", "three"]

let joinString = joinArray.joined(separator: ",")
print(joinString)


/*:
 ## Problem 8-41, 8-52

 **I want to loop through an array’s element in reverse..**

 **I want to reverse an array’s elements.**

*/

print(arrayLiteral.reversed())

/*:
 ## Problem 8-42

 **I want to loop through an array’s elements and keep track of the element’s index at the same time.**

*/

for (index, element) in arrayLiteral.enumerated() {
    print("\(index): \(element)")
}

/*:
 ## Problem 8-43

 **I want to loop through an array’s elements.**

*/

for element in arrayLiteral {
    print(element)
}


/*:
 ## Problem 8-44

 **I want to map an array’s values to a new array using a specific function..**

*/

let multiply2ArrayLiteral = arrayLiteral.map{ $0 * 2 }

print(multiply2ArrayLiteral)

/*:
 ## Problem 8-45

 **I want to retrieve the last element from an array, and remove it from that array.**

 The Difference between popLast() give optional if value is not there than it return nil

 Whereas

 removeLast() give value, if value is not present it crashes

*/

let lastItem = arrayLiteral.popLast()
print(lastItem)

let lastItemRemove = arrayLiteral.removeLast()
print(lastItemRemove)


/*:
 ## Problem 8-46

 **I want to add an element at the beginning of a given array.**

*/

arrayLiteral.insert(234, at: 0)
print(arrayLiteral)


/*:
 ## Problem 8-47

 **I want to “reduce” an array of numbers to a single value.**

*/

let sumArrayLiteralValue = arrayLiteral.reduce(0){ $0 + $1 }
print(sumArrayLiteralValue)


/*:
 ## Problem 8-48

 **I want to remove all elements from a given array..**

*/

var arrayListDemo = [1, 2, 3, 4, 5]
print(arrayListDemo)

arrayListDemo.removeAll()
print(arrayListDemo)


/*:
 ## Problem 8-49

 **I want to remove a specific element from a given array, by its index.**

*/

arrayLiteral.remove(at: 3)
print(arrayLiteral)

/*:
 ## Problem 8-50

 **I want to remove a specific element from a given array, by its value..**

*/

arrayLiteral.removeAll { $0 == 234 }

print(arrayLiteral)


/*:
 ## Problem 8-51

 **I want to remove all duplicate elements from a given array.**

*/

var setRemoveDuplicate: Set<Int> = Set(arrayLiteral)
print(setRemoveDuplicate)


/*:
 ## Problem 8-55

 **I want to – randomly – shuffle an array’s elements.**

*/

arrayLiteral.shuffle()
print("shuffled Array \(arrayLiteral)")


/*:
 ## Problem 8-56, 8-57

 **I want to sort a given array of dictionaries, by some specific dictionary field, in ascending order.**

 **I want to sort a given array of dictionaries, by some specific dictionary field, in descending order.**

*/

var members = [ ["name": "John", "age": 30],
                ["name": "Jane", "age": 39],
                ["name": "Angela", "age": 18],
                ["name": "Nick", "age": 59],
        ]

let ascendingSortedList = members.sorted { (memeber1, member2) -> Bool in
    (memeber1["age"] as! Int) < (member2["age"] as! Int)
}

print(ascendingSortedList)


let descendingSortedList = members.sorted { (memeber1, member2) -> Bool in
    (memeber1["age"] as! Int) > (member2["age"] as! Int)
}

print(descendingSortedList)

/*:
 ## Problem 8-62

 **I want to swap two elements in a given array, specifying their indices.**

*/

arrayLiteral.swapAt(2, 5)
print(arrayLiteral)


/*:
 ## Problem 8-65

 **I want to check if a given set contains a specific element.**

*/

print(setRemoveDuplicate.contains(100))

/*:
 ## Problem 8-66

 **I want to check if a given set is empty.**

*/

print(setRemoveDuplicate.isEmpty)


/*:
 ## Problem 8-67, 8-68, 8-69, 8-70

 **I want to check if a given set is a strict subset of another set.**

 **I want to check if a given set is a strict superset of another set.**

 **I want to check if a given set is a subset of another set.**

 **I want to check if a given set is a superset of another set.**



*/
print(setRemoveDuplicate)
let subsetValue: Set<Int> = [2, 3, 4]
print(subsetValue.isStrictSubset(of: setRemoveDuplicate))

print(setRemoveDuplicate.isStrictSuperset(of: subsetValue))

print(subsetValue.isSubset(of: setRemoveDuplicate))

print(setRemoveDuplicate.isSuperset(of: subsetValue))


/*:
 ## Problem 8-71

 **I want to check if two different sets are equal.**

*/

print(subsetValue == setRemoveDuplicate)


/*:
 ## Problem 8-72

 **I want to check if two different sets have common elements.**

*/

if  setRemoveDuplicate.isDisjoint(with: subsetValue) {
    print("They has no common memeber")
} else {
    print("They have a common memeber")
}


/*:
 ## Problem 8-73

 **I want to create an empty Set object.**

*/

let emptySet: Set<Int> = []
print(emptySet)


/*:
 ## Problem 8-74

 **I want to create an NSSet object from a given set..**

*/

let nsSet = NSSet(set: setRemoveDuplicate)
print(nsSet)

/*:
 ## Problem 8-75

 **I want to find the difference of two different sets.**

*/

print(setRemoveDuplicate.subtracting(subsetValue))


/*:
 ## Problem 8-76

 **I want to find the intersection of two different sets.**

*/

print(setRemoveDuplicate.intersection(subsetValue))


/*:
 ## Problem 8-77

 **I want to find the symmetric difference of two different sets.**

*/

print(setRemoveDuplicate.symmetricDifference(subsetValue))


/*:
 ## Problem 8-76

 **I want to find the union of two different sets.**

*/

print(setRemoveDuplicate.union(subsetValue))



/*:
 ## Problem 8-44

 **I want to get the size of a given set**

*/

print(setRemoveDuplicate.count)

/*:
 ## Problem 8-44

 **I want to loop through a given set’s elements.**

*/


for element in setRemoveDuplicate {
    print(element)
}

/*:
 ## Problem 8-44

 **I want to remove all elements from a given set.**

*/

setRemoveDuplicate.removeAll()
print(setRemoveDuplicate)
