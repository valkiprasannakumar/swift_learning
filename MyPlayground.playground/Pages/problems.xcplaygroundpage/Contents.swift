// FizzBuzz
func fizzBuzz() {
    for i in 1...30 {
        if i % 15 == 0 { print("FizzBuzz") }
        else if i % 3 == 0 { print("Fizz") }
        else if i % 5 == 0 { print("Buzz") }
        else { print(i) }
    }
}

// Palindrome
func isPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}
print(isPalindrome("A man, a plan, a canal: Panama"))

// Two Sum
func twoSum(_ nums: [Int], _ target: Int) -> [Int]? {
    var dict: [Int: Int] = [:]
    for (index, num) in nums.enumerated() {
        if let complementIndex = dict[target - num] {
            return [complementIndex, index]
        }
        dict[num] = index
    }
    return nil
}
print(twoSum([2, 7, 11, 15], 9) ?? [])

// Anagram
func isAnagram(_ a: String, _ b: String) -> Bool {
    return a.lowercased().sorted() == b.lowercased().sorted()
}
print(isAnagram("listen", "silent"))

// Fibonacci
func fibonacci(_ n: Int) -> Int {
    if n <= 1 { return n }
    var a = 0, b = 1
    for _ in 2...n {
        let temp = a + b
        a = b
        b = temp
    }
    return b
}
print(fibonacci(10))

// Factorial
func factorial(_ n: Int) -> Int {
    return n <= 1 ? 1 : n * factorial(n - 1)
}
print(factorial(5))

// Reverse String
func reverseString(_ s: String) -> String {
    return String(s.reversed())
}
print(reverseString("Swift"))

// Remove Duplicates
func removeDuplicates(_ array: [Int]) -> [Int] {
    return Array(Set(array)).sorted()
}
print(removeDuplicates([1, 2, 2, 3, 4, 4, 5]))
