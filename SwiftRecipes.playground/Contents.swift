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
