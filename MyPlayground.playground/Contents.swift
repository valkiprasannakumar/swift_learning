let name : String = "prasanna Kumar"
var age : Int = 29
var height : Double = 5.8
var iosDev : Bool = true
let intro = "Myself  \(name),\(age) years old.with \(height) tall, aspirant IOS Developer \(iosDev)"



func add(_ a : Int, to b : Int) -> Int {
    return a + b;
}
let result = add(5,to: 15)


var optionalString : String? = "Prasanna kumar"
optionalString = nil
var numbers = [10,20,30,40]
numbers.append(50)
let first = numbers[0]
print(numbers)
print(first)

for number in numbers {
    print("numbers : \(number)")
}

var user : [String: Any] = ["name":"prasanna kumar","age":29,"role": "Ios Developer"]
print(user)

var uniqueNumbers : Set = [1,2,3]
print(uniqueNumbers)


var ages = 12
if ages >= 18 {
    print("eligible to vote")
} else {
    print("not eligible")
}

switch ages {
case 0..<13:
    print("Child")
case 13..<18:
    print("Teen")
case 18...:
    print("adult")
default:
    print("unknown")
}


print(result)
print(intro)

var i = 0
while i < 5 {
    print(i)
    i += 1
}


