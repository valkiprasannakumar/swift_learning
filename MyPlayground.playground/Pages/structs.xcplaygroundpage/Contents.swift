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



struct Circle {
    var radius: Double
    
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var circumference: Double {
        get { return 2 * Double.pi * radius }
        set { radius = newValue / (2 * Double.pi) }
    }
    
    lazy var description: String = {
        return "Circle with radius \(radius)"
    }()
    
    var diameter: Double {
        willSet { print("Will set diameter to \(newValue)") }
        didSet { print("Did set diameter from \(oldValue)") }
    }
    
    mutating func scale(by factor: Double) {
        radius *= factor
    }
    
    static func unitCircle() -> Circle {
        return Circle(radius: 1,diameter: 20.0)
    }
}

var circle = Circle(radius: 5,diameter: 30.0)
print(circle.area)
circle.scale(by: 2)
print(circle.radius)
