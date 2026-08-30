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

class Student : Person {
    var school : String
    init(name : String, age : Int ,school : String) {
        self.school = school
        super.init(name: name, age: age)
    }
    override func greet() -> String {
        return "I'm \(name),studying at \(school)"
    }
}


let student = Student(name: "prasanna Kumar",age: 29,school: "HPS")
print(student.greet())


// protocol

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
