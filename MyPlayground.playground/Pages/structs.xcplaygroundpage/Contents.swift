struct User {
    var name: String
    var age : Int
    
    var isAdult: Bool {
        return age >= 18
        
    }
    func greet() -> String {
        return "Hi I'm \(name)"
    }
    
    mutating func haveBirthday() {
        age += 1
    }
}

var user = User(name: "Prasanna", age: 17)
print(user.name)
user.haveBirthday()
print(user.isAdult)
