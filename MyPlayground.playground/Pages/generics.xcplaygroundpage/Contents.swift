func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

struct Stack<Element> {
    var items: [Element] = []
    mutating func push(_ item: Element) { items.append(item) }
    mutating func pop() -> Element? { items.popLast() }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
print(stack.pop() ?? 0)

// Constraints
func findIndex<T: Equatable>(of value: T, in array: [T]) -> Int? {
    for (index, item) in array.enumerated() {
        if item == value { return index }
    }
    return nil
}

// Where clause
func allEqual<T>(_ array: [T]) -> Bool where T: Equatable {
    guard let first = array.first else { return true }
    return array.allSatisfy { $0 == first }
}
