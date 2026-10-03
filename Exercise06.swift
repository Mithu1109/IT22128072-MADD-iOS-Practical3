// SE4041 – Mobile Application Design & Development
// Practical 03 – Exercise 06: Structures, Classes & Value vs Reference Types

// MARK: - Section 14: Structures
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct Student {
    // Stored Properties
    var name: String
    var mark: Int
    var registered: Bool = true

    // MARK: - Section 15: Computed Property
    var grade: Grade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }

    // MARK: - Section 16: Methods
    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

// Creating and accessing a struct instance
let student = Student(
    name: "Amal",
    mark: 72
)

print(student.name)
print(student.mark)
print(student.registered)

// Section 15: Testing Computed Property with Rectangle
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(
    width: 4,
    height: 3
)

print(rectangle.area)

// Testing computed grade on Student
print(student.name)
print(student.grade.rawValue)

// Section 16: Calling Methods
let student2 = Student(
    name: "Kamal",
    mark: 75
)

student2.displayDetails()

// Mutating Methods
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count)

// MARK: - Section 17: Classes
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(
    name: "Nushkan",
    module: "SE4041"
)

lecturer.introduce()

// MARK: - Section 18: Struct vs Class – The Important Difference
// Struct Example (Value Type - creates independent copies)
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print(firstPoint.x)   // Prints 0
print(secondPoint.x)  // Prints 99

// Class Example (Reference Type - shares the same instance)
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99

print(firstCounter.count)   // Prints 99
print(secondCounter.count)  // Prints 99

// MARK: - Section 20: Knowledge Check
// 1. Why do we use functions?
//    To avoid repeating code, make code easier to understand, test small parts independently, and reuse logic.
//
// 2. What is a function parameter?
//    A named variable defined in a function's declaration that allows values to be passed into the function.
//
// 3. What does -> String mean?
//    It specifies the return type of the function, indicating that the function returns a value of type String.
//
// 4. What is an argument label?
//    The external label used when calling a function, which makes the call site read clearly and naturally.
//
// 5. What is a default parameter value?
//    A fallback value assigned to a parameter in its definition, making that argument optional when calling the function.
//
// 6. What is the purpose of guard?
//    To perform early validation and exit the scope immediately if a condition is not met, keeping subsequent code clean.
//
// 7. What is a tuple?
//    A lightweight compound type that groups multiple values into a single compound value, often used to return multiple values.
//
// 8. What does filter do?
//    Iterates over a collection and returns a new collection containing only the elements that satisfy a given predicate closure.
//
// 9. What does map do?
//    Transforms each element of a collection by applying a closure to it and returns a new collection of transformed elements.
//
// 10. What does reduce do?
//     Combines all elements of a collection into a single cumulative value using an initial value and a combining closure.
//
// 11. What problem does an enum solve?
//     It models a fixed set of related choices or states in a type-safe manner, preventing invalid values at compile time.
//
// 12. What is a raw value?
//     A default underlying primitive value (such as Int, String, or Character) assigned to each case in an enum.
//
// 13. What is a struct?
//     A custom value type that groups related properties and methods into a reusable blueprint.
//
// 14. What is a stored property?
//     A constant or variable stored as part of an instance of a struct or class.
//
// 15. What is a computed property?
//     A property that does not store a value directly, but calculates and returns one each time it is accessed.
//
// 16. When is mutating required?
//     On a struct or enum method when the method modifies any of the instance's stored properties.
//
// 17. What is a class?
//     A custom reference type supporting inheritance, custom deinitialization, and shared instances across references.
//
// 18. What is the main difference between a struct and a class?
//     Structs are value types (copied when assigned or passed), whereas classes are reference types (references to shared instances).
