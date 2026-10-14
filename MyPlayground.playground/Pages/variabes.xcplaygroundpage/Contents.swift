// varibles & dataTypes
// var = variable & let = constant
let swift  = "Swift programming"
var day  = 1
// error
// swift = "ios dev"
print("Day \(day) starting  \(swift)")


// type annotations
let username : String = "Prasanna Kumar"
var age : Int = 29
var height : Double = 5.9
var weight : Float = 136.4
var isDev : Bool = true
// String intterpolation
let intro = ("Hello Myself \(username),i am \(age) years old with \(height) tall,weighing \(weight) pounds working as \(isDev)")
print(intro)

// tuples
let person = (name:"prasanna", age: 29)
print(person.name)
print(person.age)
print(person)


// Typealias
typealias UserID = Int
let userId : UserID = 42
print(userId)



