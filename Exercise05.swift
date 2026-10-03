// SE4041 – Mobile Application Design & Development
// Practical 03 – Exercise 05: Enumerations

// MARK: - Step 1: Defining and Using an Enum
enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
direction = .south
print(direction)

// MARK: - Step 2: Enum with switch
enum Status {
    case registered
    case pending
    case rejected
}

let studentStatus = Status.registered

switch studentStatus {
case .registered:
    print("Registration Complete")
case .pending:
    print("Registration Pending")
case .rejected:
    print("Registration Rejected")
}

// MARK: - Step 3: Raw Values
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print(grade.rawValue)

// MARK: - Activity 6: ModuleStatus Enum
enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let currentModuleStatus = ModuleStatus.inProgress
print(currentModuleStatus.rawValue)
