import UIKit

var firstName = "Prasanna"
var lastName = "Kumar"
var age = 28
var height = 5.8
var isIosDev = true
var  pi = 3.14
var fullName = firstName + lastName
var info = "I am \(fullName),\(age) years old,with \(height),working as flutter developer \(isIosDev)"
var heightInfo = "my heifght is " + String(height)
let constant : Int = 20
var number : Int = 30
var totalNumber = constant + number
var surname : String?
surname = "Ios Developer"
if surname == nil{
    var name = "my surname" + surname!
}
var upperOne = firstName.uppercased()
var lowerOne = upperOne.lowercased()

let humanAge = 17

if humanAge >= 18{
    print("Eligible to vote!")
   
} else {
    print("not eligible to vote!")
}


switch humanAge {
case age...:
    print("Eligible to vote!")
default:
    print("Not eligible to vote!")
}

var names = ["Prasanna","Akshaya","Himavarshini"]
names[0]
names.append("Ammulu")
print(names)

var bookOfCollections = ["Money","cash"]
bookOfCollections[0]
bookOfCollections.append("Card")
bookOfCollections.count
for book in bookOfCollections{
    print(bookOfCollections)
}
var bookCollectionDict = ["1328683788": "Tool of Titans", "0307463745": "Rework", "1612060919": "Authority"]
bookCollectionDict["0307463745"]
for (key, value) in bookCollectionDict {
print("ISBN: \(key)")
print("Title: \(value)")
}

var jobTitle : String?
jobTitle = "Ios Developer"
if jobTitle == nil{
    var message = "I am looking for" + jobTitle!
}



