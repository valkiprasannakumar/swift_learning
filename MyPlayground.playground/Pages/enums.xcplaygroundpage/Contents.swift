enum Direction: String, CaseIterable {
    case north = "N"
    case south = "S"
    case east = "E"
    case west = "W"
    
    var opposite: Direction {
        switch self {
        case .north: return .south
        case .south: return .north
        case .east: return .west
        case .west: return .east
        }
    }
}

let dir = Direction.north
print(dir.rawValue)
print(dir.opposite)
for d in Direction.allCases { print(d.rawValue) }

// Associated values
enum Result {
    case success(Int)
    case failure(String)
}

let result = Result.success(200)
switch result {
case .success(let code): print("Success: \(code)")
case .failure(let error): print("Error: \(error)")
}
