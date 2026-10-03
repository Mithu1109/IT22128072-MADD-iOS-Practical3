// SE4041 – Mobile Application Design & Development
// Practical 03 – Final Practical Task: Student Management System

import Foundation

// MARK: - Part A: Grade Enum
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// MARK: - Part B: Student Struct
struct Student {
    // Stored Properties
    var studentID: String
    var name: String
    var mark: Int

    // MARK: - Part C: Computed Grade Property
    var grade: Grade {
        switch mark {
        case 80...100:
            return .a
        case 75..<80:
            return .aMinus
        case 70..<75:
            return .bPlus
        case 65..<70:
            return .b
        case 60..<65:
            return .bMinus
        case 55..<60:
            return .cPlus
        case 45..<55:
            return .c
        case 40..<45:
            return .cMinus
        default:
            return .f
        }
    }

    // MARK: - Part D: Display Details Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
    }
}

// MARK: - Part E: Create Students
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

// MARK: - Part F: Display All Students
print("==================================")
print("      STUDENT MANAGEMENT SYSTEM   ")
print("==================================")
print("")

print("--- All Students ---")
for student in students {
    student.displayDetails()
    print("--------------------")
}

// MARK: - Part G: Use filter (mark >= 50)
let passedStudents = students.filter { $0.mark >= 50 }

print("\n--- Passed Students (Mark >= 50) ---")
for student in passedStudents {
    print("\(student.name) (Mark: \(student.mark), Grade: \(student.grade.rawValue))")
}

// MARK: - Part H: Use map
let studentNames = students.map { $0.name }

print("\n--- Student Names List ---")
print(studentNames)

// MARK: - Part I: Use reduce & Calculate Class Average
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)

print("\n--- Class Statistics ---")
print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)")

// MARK: - Section 22: Additional Challenge (Provisional)
print("\n==================================")
print("       ADDITIONAL CHALLENGE       ")
print("==================================")

// 1. Validation function using guard let
func validateStudent(name: String?, mark: Int?) {
    guard let unwrappedName = name, !unwrappedName.trimmingCharacters(in: .whitespaces).isEmpty else {
        print("Validation Error: Student name is invalid or empty.")
        return
    }

    guard let unwrappedMark = mark, (0...100).contains(unwrappedMark) else {
        print("Validation Error: Mark must be between 0 and 100.")
        return
    }

    print("Student Validated: \(unwrappedName) with mark \(unwrappedMark)")
}

print("\nTesting Validation Function:")
validateStudent(name: nil, mark: 75)
validateStudent(name: "", mark: 80)
validateStudent(name: "Kamal", mark: 150)
validateStudent(name: "Kamal", mark: 85)

// 2. Summary function returning a tuple
func summarizeStudentMarks(_ studentList: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {
    guard !studentList.isEmpty else {
        return nil
    }

    let marks = studentList.map { $0.mark }
    let minMark = marks.min() ?? 0
    let maxMark = marks.max() ?? 0
    let total = marks.reduce(0, +)
    let avg = Double(total) / Double(marks.count)

    return (minMark, maxMark, avg)
}

print("\nTesting Summary Function with Tuple:")
if let summary = summarizeStudentMarks(students) {
    print("Lowest Mark: \(summary.minimum)")
    print("Highest Mark: \(summary.maximum)")
    print("Average Mark: \(summary.average)")
}

// 3. Demonstrating Value Types (struct) vs Reference Types (class)
print("\nDemonstrating Value Types (struct):")
var originalStudent = students[0]
var copiedStudent = originalStudent

copiedStudent.name = "Amal Perera"
copiedStudent.mark = 95

print("Original Student: \(originalStudent.name) - Mark: \(originalStudent.mark)")
print("Copied Student:   \(copiedStudent.name) - Mark: \(copiedStudent.mark)")
// Explanation: Modifying copiedStudent does NOT affect originalStudent because struct is a value type (deep copy).

print("\nDemonstrating Reference Types (class):")
class StudentRecord {
    var name: String
    var mark: Int

    init(name: String, mark: Int) {
        self.name = name
        self.mark = mark
    }
}

let originalRecord = StudentRecord(name: "Ruwan", mark: 68)
let sharedRecord = originalRecord

sharedRecord.mark = 99

print("Original Record Mark: \(originalRecord.mark)")
print("Shared Record Mark:   \(sharedRecord.mark)")
// Explanation: Modifying sharedRecord modifies originalRecord because class is a reference type (both point to the same memory instance).
