func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let result = add(4,6)
print(result)


func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}
let square = multiply(5, 5)
print(square)


func greet(_ name: String, from city: String) -> String {
    return ("Hello \(name), from \(city)")
}

let info = greet("Prasanna", from: "Kurampally")
print(info)


func sum(_ numbers: Int...) -> Int {
    return numbers.reduce(0,+)
}
let total = sum(1,2,3,4,5,6,)
print(total)


func swap(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 5 , y = 5
swap(&x,&y)
print(x,y)


// closures
let addClosure = { (a: Int ,b: Int) -> Int in
    return a + b
}

let err = addClosure(3,4)
print(err)
