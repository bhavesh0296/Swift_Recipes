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

//let aDate = Date()
//sleep(2)
//let bDate = Date()
//
//let secondsDiff = Calendar.current.dateComponents([.second], from: aDate, to: bDate)
//print(secondsDiff)

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



/*:

 # Exceptions

 ## Problem 11-1, 11-3

 **I want to create a new custom error type**

 **I want to create a new custom error type with different associated values.**

*/

enum MyCustomError: Error {
    case invalid
    case valueNotCorrect(Int)
}

extension MyCustomError {
    var localizedDescription: String {
        return "Error occured"
    }
}

extension MyCustomError: LocalizedError {
    var errorDescription: String? {

        switch self {
        case .invalid:
            return "invalid error occured"
        case .valueNotCorrect(let value):
            return "value not correct: \(value)"
        }
    }
}

/*:
 ## Problem 11-2

 **I want to throw and catch a new custom error type.**

*/

do {
    throw MyCustomError.invalid
} catch let error {
    print(error.localizedDescription)
}

do {
    throw MyCustomError.valueNotCorrect(90)
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 11-4, 11-6

 **I want to call a throwing function and catch some custom error type.**

 **I want to create a throwing function with various guard statements and catch a custom error type.**

*/

func validateAgeForVote(_ age: Int) throws -> Bool {
    guard age > 18  else {
        throw MyCustomError.valueNotCorrect(age)
    }
    return true
}

do {
    try validateAgeForVote(15)
} catch {
    print(error.localizedDescription)
}


/*:
 ## Problem 11-5

 **I want to call a throwing function and convert the different errors to optional values.**

*/

if let result = try? validateAgeForVote(19) {
    print(result)
}

/*:
 ## Problem 11-7

 **I want to write different assertions based on some given conditions.**

*/

let aValue = 4
//assert(aValue > 10, "\(a) is not greater than 10") // this statement is useful during testing


/*:
 # Web, Files, and System

 ## Problem 12-1

 **I want to check if a specific file exists.**

*/


let path = "/Users/best/Documents/Bitbucket/Practice_Project/Swift_Recipes/Advance_SwiftRecipe.playground/Sources/Hello.swift"

if FileManager.default.fileExists(atPath: path) {
    print("File Exits: \(path)")
} else {
    print("File not Exits: \(path)")
}

/*:
 ## Problem 12-2

 **I want to check if a specific file can be deleted.**

*/

if FileManager.default.isDeletableFile(atPath: path) {
    print("File is deletable: \(path)")
} else {
    print("File is not deletable: \(path)")
}

/*:
 ## Problem 12-3

 **I want to check if a specific file can be executed.**

*/

if FileManager.default.isExecutableFile(atPath: path) {
    print("File is executable: \(path)")
} else {
    print("File is not executable: \(path)")
}

/*:
 ## Problem 12-4

 **I want to check if a specific file can be read.**

*/

if FileManager.default.isReadableFile(atPath: path) {
    print("File is Readable: \(path)")
} else {
    print("File is not Readable: \(path)")
}

/*:
 ## Problem 12-5

 **I want to check if a specific file can be written to.**

*/

if FileManager.default.isWritableFile(atPath: path) {
    print("File is writable: \(path)")
} else {
    print("File is not writable: \(path)")
}

/*:
 ## Problem 12-6

 **I want to check if a given path corresponds to a folder.**

*/

var isFolder: ObjCBool = false

let _ = FileManager.default.fileExists(atPath: path, isDirectory: &isFolder)

if isFolder.boolValue {
    print("It is directory \(path)")
} else {
    print("It is not directory \(path)")
}


/*:
 ## Problem 12-7

 **I want to copy a file at a given path to another path.**

*/

let pathFrom = URL(string: "tests/fileToCopy.txt")!
let pathTo = URL(string: "tests/new/location/fileToCopy.txt")!

do {
    try FileManager.default.copyItem(at: pathFrom, to: pathTo)
    print("it copy successfully")
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-8

 **I want to create a specific directory at a given path.**

*/

do {
    try FileManager.default.createDirectory(at: pathTo, withIntermediateDirectories: true, attributes: [:])
    print("Directory is created")
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-9

 **I want to create a URL object from a given file path.**

*/

let filePath = "/var/www/html/index.html"
let urlFilePath = URL(fileURLWithPath: filePath)
print(urlFilePath)

/*:
 ## Problem 12-10

 **I want to create a URL object from a given string.**

*/

let pathHttps = "https://www.google.com"
let urlPathHttps = URL(string: pathHttps)
print(urlPathHttps)

/*:
 ## Problem 12-11, 12-12

 **I want to delete a file at a specific file path.**

 **I want to delete a folder at a specific file path.**

 Same code work into both cases
*/

do {
    try FileManager.default.removeItem(at: pathFrom)
    print("File is deleted: \(pathFrom)")
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-13, 12-14, 12-15

 **I want to get the file extension component of a given path string.**

 **I want to get the filename component of a given path string.**

 **I want to get the folder component of a given path string.**

*/

let ext = urlFilePath.pathExtension
print(ext)

let fileName = urlFilePath.lastPathComponent
print(fileName)

let folderName = urlFilePath.deletingLastPathComponent().pathExtension
print(folderName)

/*:
 ## Problem 12-16

 **I want to get the different path components of a given path string.**

*/

let pathComponents = urlFilePath.pathComponents

for component in pathComponents {
    print(component)
}

/*:
 ## Problem 12-17

 **I want to get the different attributes of a given file.**

*/

do {
    let attrs = try FileManager.default.attributesOfItem(atPath: path)
    print("file arrtibues of \(path) is: \(attrs)")
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-18

 **I want to get the current directory path.**

*/

let currentPath = FileManager.default.currentDirectoryPath
print(currentPath)

/*:
 ## Problem 12-19

 **I want to get the contents of a directory at given path as an array.**

*/

do {
    let content = try FileManager.default.subpathsOfDirectory(atPath: currentPath)
    print(content)
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-20

 **I want to get the resource’s path of a given bundle.**

*/

if let path = Bundle.main.path(forResource: "Advance_SwiftRecipe", ofType: "swift") {
    print("path is \(path)")
} else {
    print("path is not present for this resource")
}

/*:
 ## Problem 12-21

 **I want to get the size of a specific file.**
*/

do {
    let attrs = try FileManager.default.attributesOfItem(atPath: path)
    let fileSize = (attrs[FileAttributeKey.size] as! NSNumber).uint64Value
    print("File size for \(path) is: \(fileSize)")
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-23

 **I want to read the contents of a specific text file into a string.**

*/

do {
    let contents = try String(contentsOfFile: path, encoding: .ascii)
    print(contents)
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-24

 **I want to read the data of a specific file.**

*/

let pathURLValue = URL(fileURLWithPath: path)

if let data = try? Data(contentsOf: pathURLValue) {
    print("Data of file \(path) is: \(data)")
}

/*:
 ## Problem 12-25

 **I want to rename a specific file at a given path.**

 Into this same move command is used

*/

do {
    try FileManager.default.moveItem(at: pathFrom, to: pathTo)
    print("yes file name is renamed")
} catch let error {
    print(error.localizedDescription)
}

/*:
 ## Problem 12-26, 12-27

 **I want to write some data to a specific file.**

*/

let stringDataToWrite = "The quick brown fox jumps over the lazy little dog"
if let data = stringDataToWrite.data(using: .utf8) {
    do {
        try data.write(to: pathURLValue)

    } catch let error {
        print(error.localizedDescription)
    }
}

/*:
 ## Problem 12-28

 **I want to download a specific web page’s HTML into a string.**

*/

let urlWebpage = URL(string: "https://www.google.com")!

do {
    let contents = try String(contentsOf: urlWebpage, encoding: .utf8)
//    print(contents) // uncomment this line when wanna see that contents into the console
} catch let error {
    print(error.localizedDescription)
}


/*:
 ## Problem 12-29

 **I want to make an HTTP web request.**

*/

/// url for the news api with the key
let urlString = "https://newsapi.org/v2/top-headlines?sources=engadget&apiKey=452d040207744964b395c0996a51174c"
let url = URL(string: urlString)!
var request = URLRequest(url: url)
let session = URLSession(configuration: URLSessionConfiguration.default)

let task = session.dataTask(with: request) { (data, response, error) in

    if error != nil {
        print("error occured: \(error!.localizedDescription)")
    } else {
        if let response = response {
            print("Response is: \(response)")
        }

        if let data = data,
            let dataString = String(data: data, encoding: .utf8) {
            print("Data Value: \(dataString)")
        }
    }
}

//task.resume() // uncomment this to run this request



/*:
 ## Problem 12-30

 **I want to make an HTTP web request with custom headers.**

*/

request.addValue("application/json", forHTTPHeaderField: "Content-Type")
request.addValue("application/json", forHTTPHeaderField: "Accept")

let task2 = session.dataTask(with: request) { (data, response, error) in

    if error != nil {
        print("error occured: \(error!.localizedDescription)")
    } else {
        if let response = response {
            print("Response is: \(response)")
        }

        if let data = data,
            let dataString = String(data: data, encoding: .utf8) {
            print("Data Value: \(dataString)")
        }
    }
}


//task2.resume() // uncomment it to run this request

/*:
 ## Problem 12-31

 **I want to make an HTTP web request with JSON data.**

*/

let jsonBody = ["name":"John", "surname":"Doe"] as Dictionary<String, String>
let jsonData = try? JSONSerialization.data(withJSONObject: jsonBody)

request.httpMethod = "POST"
request.httpBody = jsonData

// remaining remains same of previos two example


/*:
 ## Problem 12-34

 **I want to get the identifier of a specific bundle.**

*/

if let id = Bundle.main.bundleIdentifier{
    print("Bundle Identifier is \(id)")
} else {
    print("Bundle Identifier is nil")
}

/*:
 ## Problem 12-35

 **I want to be able to process the individual command line arguments passed to my application.**

*/

let args = CommandLine.arguments
print(args)

/*:
 ## Problem 12-36

 **I want to get the executables’ path of a specific bundle.**

*/

if let pathExecutable = Bundle.main.executablePath {
    print("Executable Path: \(pathExecutable)")
} else {
    print("Executable path is not present")
}


/*:
 ## Problem 12-37

 **I want to get the frameworks’ path of a specific bundle.**

*/

if let frameworkPath = Bundle.main.privateFrameworksPath {
    print("Framework path of Bundle is: \(frameworkPath)")
} else {
    print("Framework path is not present")
}

if let frameworkPath = Bundle.main.sharedFrameworksPath {
    print("Share Framework path of Bundle is: \(frameworkPath)")
} else {
    print("Framework path is not present")
}

/*:
 ## Problem 12-38

 **I want to get the Home directory path for the current user.**

*/

let homeDirectory = NSHomeDirectory()
print("Home Directory: \(homeDirectory)")

/*:
 ## Problem 12-39

 **I want to get the Home directory path for a specific user.**

*/

if let homeDirectoryForSpecificUser = NSHomeDirectoryForUser("user") {
    print("Home Directory For Specific User: \(homeDirectoryForSpecificUser)")
} else {
    print("Directory is not present for specific user")
}

/*:
 ## Problem 12-40

 **I want to get the main path of a given bundle.**

*/

let mainBundlePath = Bundle.main.bundlePath
print("Main Bundle Path: \(mainBundlePath)")

/*:
 ## Problem 12-41

 **I want to get the system’s default currency code.**

*/

let locale = Locale.current
if let currency = locale.currencyCode {
    print("Currency code is \(currency)")
} else {
    print("Currency code is not present")
}

/*:
 ## Problem 12-

 **I want to get the system’s default language code.**

*/

if let systemLanguage = locale.languageCode {
    print("System Language code is: \(systemLanguage)")
} else {
    print("System Language code is not present")
}

/*:
 ## Problem 12-43

 **I want to get the system’s default region code.**

*/

if let regionCode = locale.regionCode {
    print("System region code is: \(regionCode)")
} else {
    print("System region code is not present")
}

/*:
 ## Problem 12-44

 **I want to get the system’s default temporary directory path.**

*/

let systemTempDirectory = NSTemporaryDirectory()
print("System temperory Directory: \(systemTempDirectory)")

/*:
 ## Problem 12-45

 **I want to get the username of the current user.**

*/

let currentUserName = NSUserName()
print("System current User Name: \(currentUserName)")

/*:
 ## Problem 12-46

 **I want to be able to get user input from the command line.**

*/

print("Welcome Please enter your name")
//if let name = readLine() {
//    print("Hello, \(name)")
//}


/*:
 # More Advanced Topics

 ## Problem 13-4

 **I want to create some specific delay..**

*/

print("It is going delay after this statement")
sleep(2)
print("Delay is over")


/*:
 ## Problem 13-5

 **I want to defer the execute of a specific block of code.**

*/

func doDeferSomething() {
    defer {
        // this is defer block that always executed
        print("Executing leaving the function")
    }

    for i in 1...10{
        print("value: \(i)")
    }
}

doDeferSomething()


/*:
 ## Problem 13-7

 **I want to be able to observe the value changes of a specific variable.**

 Rule of tump is that into willSet value is going to set, so that we get newValue into it

 Into didSet value is get set so we get oldValue into it

*/

var temperature = 20 {
    willSet {
        print("Temperature is about to change from \(temperature) to \(newValue)")
    }

    didSet {
        print("Tempeatre is changed from \(oldValue) to \(temperature)")
    }
}

temperature = 30

/*:
 ## Problem 13-8

 **I want to cache some data.**

*/

var cache = NSCache<NSString, NSString>()
cache.setObject(NSString(string: "Hey"), forKey: "HEY" as NSString)
cache.setObject(NSString(string: "Hello"), forKey: "HELLO" as NSString)


if let cachedHEY = cache.object(forKey: "HEY"){
    print(cachedHEY)
}
