var username : String? = "prasanna kumar"
if let unwrapped = username {
    print("Username is \(unwrapped)")
} else {
    print("No username")
}


username = nil
if let unwrapped = username {
    print("username is \(unwrapped)")
} else {
    print("no username")
}


// shorthand syntax
var shorthand : String? = "Ios Developer"
var output = shorthand ?? "justdev"

print(output)



func greet(_ name : String?) {
    guard let name else {
        print("No name provided")
        return
    }
    print("Hello, \(name)")
}

greet("prasanna kumar")
greet(nil)

let count = username?.count
print(count ?? 0)

let safecount = username?.count ?? 0

func doubleValue(_ number : Double?) {
    guard let number else {
        print("no double value provided")
        return
    }
    print("this is \(number)")
}

doubleValue(30)
doubleValue(0)



let possibleNumners = "123"
let convertNumbers = Int(possibleNumners)
print(convertNumbers!)


if let convertedNumber = convertNumbers {
    print(convertedNumber)
}
