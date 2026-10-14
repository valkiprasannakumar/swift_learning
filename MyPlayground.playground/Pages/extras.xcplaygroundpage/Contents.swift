//// memory management
//class Owner {
//    var pet: Pet?
//    deinit { print("Owner deallocated") }
//}
//
//class Pet {
//    weak var owner: Owner?
//    deinit { print("Pet deallocated") }
//}
//
//var owner: Owner? = Owner()
//var pet: Pet? = Pet()
//owner?.pet = pet
//pet?.owner = owner
//owner = nil
//pet = nil
//
////// Retain cycle with closure
////class MyClass {
////    var closure: (() -> Void)?
////    func setup() {
////        closure = { [weak self] in
////            print(self?.description ?? "nil")
////        }
////    }
////}
//
//
//// Access control
//public class PublicClass {
//    public var publicVar = 1
//    internal var internalVar = 2
//    fileprivate var fileprivateVar = 3
//    private var privateVar = 4
//}
//
//// open allows subclassing outside module
//open class OpenClass {
//    open func overridable() {}
//}
//// type casting
//class Animal {}
//class Dog: Animal { func bark() { print("Woof") } }
//class Cat: Animal { func meow() { print("Meow") } }
//
//let animals: [Animal] = [Dog(), Cat(), Dog()]
//for animal in animals {
//    if let dog = animal as? Dog {
//        dog.bark()
//    } else if let cat = animal as? Cat {
//        cat.meow()
//    }
//}
//
//// Any and AnyObject
//var things: [Any] = [1, "Hello", 3.14, true]
//for thing in things {
//    switch thing {
//    case let int as Int: print("Int: \(int)")
//    case let string as String: print("String: \(string)")
//    default: print("Other")
//    }
//}
//
//
//// pattern macthing
//let point = (x: 1, y: 2)
//switch point {
//case (0, 0): print("Origin")
//case (let x, 0): print("X-axis at \(x)")
//case (0, let y): print("Y-axis at \(y)")
//case (let x, let y) where x == y: print("On diagonal")
//default: print("Somewhere else")
//}
//
//// if case
//let optionalInt: Int? = 42
//if case .some(let value) = optionalInt {
//    print(value)
//}
//
//// guard case
//func check(_ value: Int?) {
//    guard case .some(let x) = value else { return }
//    print(x)
//}
//
//
//// Concurrency – async/await, actors
//func fetchData() async -> String {
//    try? await Task.sleep(nanoseconds: 1_000_000_000)
//    return "Data loaded"
//}
//
//Task {
//    let data = await fetchData()
//    print(data)
//}
//
//// async let
//func fetchUser() async -> String { "User" }
//func fetchPosts() async -> [String] { ["Post1", "Post2"] }
//
//Task {
//    async let user = fetchUser()
//    async let posts = fetchPosts()
//    let (u, p) = await (user, posts)
//    print(u, p)
//}
//
//// TaskGroup
//Task {
//    await withTaskGroup(of: Int.self) { group in
//        for i in 1...3 {
//            group.addTask { return i * 2 }
//        }
//        for await result in group {
//            print(result)
//        }
//    }
//}
//
//// Actor
//actor Counter {
//    private var value = 0
//    func increment() { value += 1 }
//    func getValue() -> Int { value }
//}
//
//Task {
//    let counter = Counter()
//    await counter.increment()
//    print(await counter.getValue())
//}
//
//// MainActor
//@MainActor
//class ViewModel {
//    var data: String = ""
//    func update() { data = "Updated" }
//}
//
//
//// property wrappers
////@propertyWrapper
////struct UserDefault<T> {
////    let key: String
////    let defaultValue: T
////    var wrappedValue: T {
////        get { UserDefaults.standard.object(forKey: key) as? T ?? defaultValue }
////        set { UserDefaults.standard.set(newValue, forKey: key) }
////    }
////}
////
////struct Settings {
////    @UserDefault(key: "username", defaultValue: "Guest")
////    var username: String
////}
////
////var settings = Settings()
////print(settings.username)
////settings.username = "Alice"
////print(settings.username)
//
//
//// Result Builders
//@resultBuilder
//struct StringBuilder {
//    static func buildBlock(_ components: String...) -> String {
//        components.joined(separator: "\n")
//    }
//}
//
//func makeString(@StringBuilder content: () -> String) -> String {
//    content()
//}
//
//let resultString = makeString {
//    "Line 1"
//    "Line 2"
//    "Line 3"
//}
//print(resultString)
//
////   key paths
//struct User {
//    let name: String
//    let age: Int
//}
//
//let users = [User(name: "Alice", age: 30), User(name: "Bob", age: 25)]
//let names = users.map(\.name)
//let ages = users.map(\.age)
//print(names, ages)
//
//let keyPath = \User.name
//print(users[0][keyPath: keyPath])
//
//// Opaque and Existential Types
//protocol Shape {
//    func area() -> Double
//}
//
//struct Circle: Shape {
//    let radius: Double
//    func area() -> Double { Double.pi * radius * radius }
//}
//
//struct Square: Shape {
//    let side: Double
//    func area() -> Double { side * side }
//}
//
//// Opaque type: some
//func makeShape() -> some Shape {
//    return Circle(radius: 5)
//}
//
//// Existential type: any
//func printArea(shape: any Shape) {
//    print(shape.area())
//}
//
//let shapes: [any Shape] = [Circle(radius: 2), Square(side: 3)]
//for shape in shapes { printArea(shape: shape) }
//
//
//
//// codable - json
////struct UserModel: Codable {
////    let id: Int
////    let name: String
////    let email: String
////}
////
////let jsonString = """
////{"id":1,"name":"Alice","email":"alice@example.com"}
////"""
////
////let jsonData = jsonString.data(using: .utf8)!
////do {
////    let user = try JSONDecoder().decode(UserModel.self, from: jsonData)
////    print(user.name)
////    
////    let encoded = try JSONEncoder().encode(user)
////    let encodedString = String(data: encoded, encoding: .utf8)!
////    print(encodedString)
////} catch {
////    print(error)
////}
//
//
//// foundational esseentials
////let now = Date()
////let formatter = DateFormatter()
////formatter.dateStyle = .medium
////print(formatter.string(from: now))
////
////let url = URL(string: "https://api.example.com")!
////print(url.host ?? "")
////
////let fileManager = FileManager.default
////let documents = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
////print(documents.path)
//
//
//
//// Swift Standard Library Useful Methods
//let string = "Hello, Swift!"
//print(string.count)
//print(string.uppercased())
//print(string.lowercased())
//print(string.contains("Swift"))
//print(string.replacingOccurrences(of: "Swift", with: "World"))
//print(string.split(separator: ","))
//
//let array = [1, 2, 3, 4, 5]
////print(array?.first)
////print(array.last)
//print(array.min() ?? 0)
//print(array.max() ?? 0)
//print(array.reduce(0, +))
//print(array.filter { $0 > 2 })
//print(array.map { $0 * 2 })
//print(array.compactMap { Int("\($0)") })
//print(array.flatMap { [$0, $0 * 2] })
//print(array.sorted())
//print(array.reversed())
