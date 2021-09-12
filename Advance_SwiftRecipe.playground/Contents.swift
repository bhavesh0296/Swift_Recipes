import UIKit

/*:

 # Advance Swift Recipe Playground

 ## Problem 10-1

 **I want to calculate the average of all elements in a given number array.**

*/
var arrayLiteral = [2, 3, 4, 4, 6, 7, 9]

let average = Double(arrayLiteral.reduce(0){ $0 + $1 }) / Double(arrayLiteral.count)
print(average)


/*:
 ## Problem 10-2

 **I want to calculate the median of all the elements in a given number array.**
  ## IMPORTANT: HAVE TO CHECK IT

*/

//let sortedArray = arrayLiteral.sorted()
//let median = sortedArray.count % 2 == 1 ?
//    Double(sortedArray[sortedArray.count/2]) :
//    Double((sortedArray[sortedArray.count/2] + sortedArray[sortedArray.count/2-1])/2.0)


/*:
 ## Problem 10-3

 **I want to calculate the product of all the elements in a given number array.**

*/

let multiplyElement = arrayLiteral.reduce(1) { $0 * $1 }
print(multiplyElement)


/*:
 ## Problem 10-4

 **I want to calculate the sum of all the elements in a given number array.**

*/

let sumElements = arrayLiteral.reduce(0, +)
print(sumElements)

/*:
 ## Problem 10-5

 **I want to calculate the base-2 logarithm of a given number.**

 ## IMPORTANT: HAVE TO CHECK IT

*/

let num = 16.0
//let result = M_LOG2E(


/*:
 ## Problem 10-6

 **I want to calculate the cosine of a given angle.**

*/

let angle = 180 * Double.pi / 180

let cosine = cos(angle)
print(cosine)

/*:
 ## Problem 10-7

 **I want to calculate the exponential of a given number.**

*/
let number = 3.0
let result = exp(number)
print(result)


/*:
 ## Problem 10-8

 **I want to calculate the inverse cosine of a given number.**

*/

let number2 = -1.0
let inv = acos(number2)
let angle2 = inv * 180 / Double.pi
print(angle2)

/*:
 ## Problem 10-9

 **I want to calculate the inverse sine of a given number.**

*/

let number3 = 1.0
let inv3 = asin(number3)
let angle3 = inv3*180/Double.pi
print(angle3)


/*:
 ## Problem 10-10

 **I want to calculate the inverse tangent of a given number.**

*/

let number4 = 1.0
let inv4 = atan(number4)
let angle4 = inv4*180/Double.pi
print(angle4)


/*:
 ## Problem 10-11

 **I want to calculate the logarithm of a given number.**

*/

let number5 = 5.0
let result5 = log(number5)
print(result5)


/*:
 ## Problem 10-12

 **I want to calculate the factorial of a given number.**

*/

let number6 = 10
let result6 = (1...10).reduce(1, *)
print(result6)


/*:
 ## Problem 10-13

 **I want to calculate a specific root of a given number.**

*/

let number7: Double = 16
let root = pow(number7, 1/4)
print(root)

/*:
 ## Problem 10-14

 **I want to calculate the power of a given number.**

*/

let number8 = 4.0
let power4 = pow(number8, 4)
print(power4)

/*:
 ## Problem 10-15

 **I want to calculate the sine of a given angle.**

*/

let angle6 = 90.0*Double.pi/180 // By this we convert it into radians
let sine = sin(angle6)
print(sine)

/*:
 ## Problem 10-16

 **I want to calculate the square of a given number.**

*/

let number9 = 42.0
let square = pow(number9, 2)
print(square)

/*:
 ## Problem 10-17

 **I want to calculate the square root of a given number.**

*/
let number10 = 1764.0
let squareRoot = sqrt(number10)
print(squareRoot)

/*:
 ## Problem 10-18

 **I want to calculate the tangent of a given angle.**

*/

let angle9 = 45.0*Double.pi/180
let tangent = tan(angle9)
print(tangent)

/*:
 ## Problem 10-19

 **I want to check if a given object is of type Int.**

*/
var a: Any = 89

if a is Int {
    print("\(a) is integer")
} else {
    print("\(a) is not integer")
}


/*:
 ## Problem 10-20

 **I want to make a conversion between different angle units.**

 ## IMPORTANT: HAVE TO CHECK IT
*/

let angleValue = Measurement(value: 100, unit: UnitAngle.degrees)
let convertedAngle = angleValue.converted(to: .radians)
print(convertedAngle)


/*:
 ## Problem 10-21

 **I want to make a conversion between different area units.**

*/

let areaValue = Measurement(value: 100, unit: UnitArea.squareFeet)
let convertedArea = areaValue.converted(to: .squareCentimeters)
print(convertedArea)


/*:
 ## Problem 10-22

 **I want to make a conversion between different length units..**

*/

let length = Measurement(value: 100, unit: UnitLength.meters)
let converted = length.converted(to: .feet)
print(converted)


/*:
 ## Problem 10-23

 **I want to make a conversion between different volume units.**

*/

let volumeValue = Measurement(value: 100, unit: UnitVolume.centiliters)
let convertedVolume = volumeValue.converted(to: .cubicDecimeters)
print(convertedVolume)


/*:
 ## Problem 10-24

 **I want to convert an angle, from degrees to radians.**

*/

let radianValue = Measurement(value: 100, unit: UnitAngle.radians)
let convertedAngle2 = radianValue.converted(to: .degrees)
print(convertedAngle2)


/*:
 ## Problem 10-25

 **I want to convert a given double number to Int.**

*/

let doubleValue = 40.0
let intValue = Int(doubleValue)
print(intValue)


/*:
 ## Problem 10-26

 **I want to convert a given double number to its string representation.**

*/

let stringValue = String(doubleValue)
print(stringValue)


/*:
 ## Problem 10-27

 ** want to convert a Float number to a CGFloat.**

*/

let floatValue: Float = 89.0
let cgFloat = CGFloat(floatValue)
print(cgFloat)

/*:
 ## Problem 10-28

 **I want to convert a float number to an Int.**

*/

let intValue2 = Int(floatValue)
print(intValue2)

/*:
 ## Problem 10-29

 **I want to convert a float number to its string representation.**

*/

let strValue2 = String(floatValue)
print(strValue2)

/*:
 ## Problem 10-30

 **I want to convert an int number to double.**

*/
let intValue3 = 30
let doubleValue3 = Double(intValue3)
print(doubleValue3)

/*:
 ## Problem 10-31, 10-32

 **I want to convert an int number to float.**

 **I want to convert an int number to its string representation.**

*/

let floatValue4 = Float(intValue3)
print(floatValue4)

let strValue4 = String(intValue3)
print(strValue4)

/*:
 ## Problem 10-33

 **I want to convert an angle, from radians to degrees.**

*/

let radians2 = 0.3
let degree2 = radians2*180/Double.pi
print(degree2)

/*:
 ## Problem 10-34

 **I want to generate a random number within a specific range.**

*/

let randomNumber = Int.random(in: 20...60)
print(randomNumber)

/*:
 ## Problem 10-35

 **I want to generate any random number.**

*/

let randomAnyNumber = arc4random()
print(randomAnyNumber)

/*:
 ## Problem 10-36

 **I want to get the absolute value of a given number.**

 This values means its removes the signed i.e minus

*/
let x = -10
let absolueValue = abs(x)
print(absolueValue)


/*:
 ## Problem 10-37, 10-38

 **I want to get the maximum of two given values.**

 **I want to get the minimum of two given values.**

*/

let value1 = 89
let value2 = 78

let maxValue = max(value1, value2)
print(maxValue)

let minValue = min(value1, value2)
print(minValue)


/*:
 ## Problem 10-39

 **I want to round a given decimal value down to a whole number.**

 #IMPORTANT: Ask into the Interviews
*/

let valueToRound = 10.982375
let valueRounded = floor(valueToRound)
print(valueRounded)


/*:
 ## Problem 10-40

 **I want to round a given decimal value to the nearest whole number.**

 #IMPORTANT: Ask into the Interviews

*/

let valueRoundedNeartest = round(valueToRound)
print(valueRoundedNeartest)



/*:
 ## Problem 10-41

 **I want to round a given decimal value up to a whole number.**

*/

let valueCeil = ceil(valueToRound)
print(valueCeil)


/*:
 ## Problem 10-42

 **I want to calculate the resulting date after adding an interval to a given date.**

  #IMPORTANT: Ask into the Interviews
*/

var now = Date()
let futureDate = Calendar.current.date(byAdding: .day, value: 10, to: now)
print(futureDate)

/*:
 ## Problem 10-43, 10-44, 10-46, 10-47

 **I want to check if a given date is in the future.**

 **I want to check if a given date is in the past.**

 **I want to check if two different dates are equal.**

 **I want to compare two different dates.**

 ### Rule: We can compare date objects using opeators(i.e <, >, ==) into swift
*/
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"

let date = formatter.date(from: "2050-04-23")!

if date < now {
    print("date is less than now")
} else if date == now {
    print("date is equal to now")
} else {
    print("date is more than now")
}


/*:
 ## Problem 10-45

 **I want to check if a given date is today.**

*/

let dateToCheck = Calendar.current.dateComponents([.year, .month, .day], from: date)
let currentDate = Calendar.current.dateComponents([.year, .month, .day], from: now)

if dateToCheck.year == currentDate.year &&
    dateToCheck.month == currentDate.month &&
    dateToCheck.day == currentDate.day {

    print("Current date is equal to today date")
} else {
    print("Current date is not equal to today date")
}



/*:
 ## Problem 10-48

 **I want to create a date object from the current date.**

*/

let currentNowDate = Date() // you can just create object every date object creaed represnt now date

/*:
 ## Problem 10-49

 **I want to create a date object from a given date.**

*/

var dateComponents = DateComponents()
dateComponents.year = 2000
dateComponents.month = 11
dateComponents.day = 12

let dateCreated = Calendar.current.date(from: dateComponents)
print(dateCreated)


/*:
 ## Problem 10-50

 **I want to create a Date object from a given string format.**

*/

let dateString = "2000-09-21"

let dateFromString = formatter.date(from: dateString)!
print(dateFromString)

/*:
 ## Problem 10-51

 **I want to find a date in a specific string.**

 ## IMPORTANT: MAY GET ASK INTO INTERVIEW

*/

let text = "This 09/07/2010is a 09/07/2010random date: 09/07/2010  09/07/2010"
print(text)
if let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.date.rawValue) {
    let results = detector.matches(in: text, options: [], range: NSRange(location: 0, length: text.count))

    for result in results {
        print(result.date!)
    }
}

/*:
 ## Problem 10-52

 **I want to format a string from a given date.**

*/

let stringFromDate = formatter.string(from: now)
print(stringFromDate)

/*:
 ## Problem 10-53

 **I want to get the different components of a given date.**

*/

let componentsOfDate = Calendar.current.dateComponents([.day, .month, .year], from: now)
print(componentsOfDate)

/*:
 ## Problem 10-54

 **I want to get the day component of a given date.**

*/

let dayFromDate = Calendar.current.component(.day, from: now)
print(dayFromDate)

/*:
 ## Problem 10-55

 **I want to get the difference, in days, between two different dates.**

*/

let dayDifference = Calendar.current.dateComponents([.day], from: dateFromString, to: now)
print(dayDifference)

/*:
 ## Problem 10-56

 **I want to get the month component of a given date.**

*/

let monthComponent = Calendar.current.component(.month, from: dateFromString)
print(monthComponent)

/*:
 ## Problem 10-57

 **I want to get the month name component of a given date.**

*/

let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

let monthName = months[monthComponent-1]
print(monthName)


/*:
 ## Problem 10-58

 **I want to get the difference, in seconds, between two different times.**

*/

let aDate = Date()
sleep(2)
let bDate = Date()

let secondsDiff = Calendar.current.dateComponents([.second], from: aDate, to: bDate)
print(secondsDiff)

/*:
 ## Problem 10-59

 **I want to get the Unix timestamp for the current date.**

*/

let unixTimeStamp = now.timeIntervalSince1970
print(unixTimeStamp)


/*:
 ## Problem 10-60

 **I want to get the year component of a given date.**

*/

let yearValue = Calendar.current.component(.year, from: now)
print(yearValue)
