// error handling
enum FileError: Error {
    case notFound
    case noPermission
}

func readFile(_ name: String) throws -> String {
    if name.isEmpty { throw FileError.notFound }
    return "File content"
}

do {
    let content = try readFile("test.txt")
    print(content)
} catch FileError.notFound {
    print("File not found")
} catch {
    print("Unknown error: \(error)")
}

// try? and try!
let optionalContent = try? readFile("test.txt")
let forcedContent = try! readFile("test.txt") // crashes if error

// defer
func process() {
    defer { print("Cleanup") }
    print("Processing")
}
process()
