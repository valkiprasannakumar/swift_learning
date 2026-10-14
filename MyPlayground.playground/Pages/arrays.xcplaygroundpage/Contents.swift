var numbers = [10,20,30,40,50]
numbers.append(60)
numbers.insert(5, at: 2)
numbers.remove(at: 1)
print(numbers)


var fruits = ["Apple","banana","orange"]
fruits.append("mango")
fruits.insert("grapes", at: 4)
fruits.remove(at: 2)
let firstFruit = fruits[0]
print(firstFruit)
print(fruits)

for fruit in fruits {
print(fruit)
}
let uppercased = fruits.map { $0.uppercased()}
print(uppercased)
let filtered = fruits.filter { $0.hasPrefix("A")}
print("result :\(filtered)")

let sorted = fruits.sorted()

print(sorted)


var user = ["name": "prasanna"]
print(user)



var order : Set = [1,2,3,3,4,4,4,5]
print(order.sorted())
let otherset = [6,7,8,]
let union = order.union(otherset)
print(union.sorted())
let intersect = order.intersection(otherset)
print(intersect)



// Array
var leastNumbers = [1, 2, 3, 4, 5]
numbers.append(6)
numbers.insert(0, at: 0)
numbers.remove(at: 0)
print(numbers[0])
print(numbers.count)
print(numbers.contains(3))
print(numbers.first ?? 0)
print(numbers.last ?? 0)

// map, filter, reduce
let doubled = numbers.map { $0 * 2 }
let evens = numbers.filter { $0 % 2 == 0 }
let sum = numbers.reduce(0, +)
print(doubled, evens, sum)

// Dictionary
var dict = ["a": 1, "b": 2]
dict["c"] = 3
dict["a"] = 10
print(dict["a"] ?? 0)
for (key, value) in dict { print(key, value) }

// Set
var set: Set<Int> = [1, 2, 3, 3]
set.insert(4)
set.remove(1)
print(set.contains(2))
print(set)

// Sorting
//let sorted = numbers.sorted()
let sortedDesc = numbers.sorted(by: >)
