// if statement
let age = 5
if age >= 18 {
    print("Eligible to vote")
} else {
    print("wait until 18 years to vote")
}

// if else statements
let temperature = 15
if temperature > 30 {
    print("Hot")
} else if temperature > 20 {
    print("warm")
} else {
    print("cold")
}

// switch statements
let day = "Monday"
switch day {
case "Monday", "Tuesday" :
    print("Weekday")
case "Saturday" , "Sunday" :
    print("Weekend")
default :
    print(("Unknown"))
}

// ranges
let score = 90
switch score {
case 0..<60:
    print("Fail")
case 60..<80:
    print("Pass")
case 80...100:
    print("Excellent")
default:
    print("Invalid")
}

