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

