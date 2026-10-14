class Person {
    var name : String
    var age : Int
    init(name : String , age : Int) {
        self.name = name
        self.age = age
    }
    func greet() -> String {
        return "Hello \(name)"
        
    }
}

class Students : Person {
    var school : String
    init(name : String, age : Int ,school : String) {
        self.school = school
        super.init(name: name, age: age)
    }
    override func greet() -> String {
        return "I'm \(name),studying at \(school)"
    }
}


let student = Students(name: "prasanna Kumar",age: 29,school: "HPS")
print(student.greet())


// protocols

protocol Greetable {
    var name: String  { get }
    func greet() -> String
}

struct Employee: Greetable {
    let name : String
    func greet() -> String {
        return " Hello \(name)"
    }
}

let emp = Employee(name: "prasanna Kumar")
print(emp)


protocol Vehicle {
    var wheels: Int { get }
    func start()
}

extension Vehicle {
    func describe() -> String {
        return "Vehicle with \(wheels) wheels"
    }
}

struct Car: Vehicle {
    let wheels: Int
    func start() {
        print("Car starting")
    }
}

let car = Car(wheels: 4)
car.start()
print(car.describe())

// Protocol composition
protocol Named { var name: String { get } }
protocol Aged { var age: Int { get } }
typealias PersonProtocol = Named & Aged

struct Student: PersonProtocol {
    let name: String
    let age: Int
}

// Associated types
protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct IntStack: Container {
    var items: [Int] = []
    mutating func append(_ item: Int) { items.append(item) }
    var count: Int { items.count }
    subscript(i: Int) -> Int { items[i] }
}
