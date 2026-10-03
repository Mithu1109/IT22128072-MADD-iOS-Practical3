// SE4041 – Mobile Application Design & Development
// Practical 03 – Exercise 02: guard

// MARK: - Example: guard Statement and Validation
func register(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }

    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }

    print("Registered \(name)")
}

// Testing register function
register(nil)
register("")
register("Kamal")

// MARK: - Activity 3: checkStudent
func checkStudent(name: String?, mark: Int?) {
    guard let name = name else {
        print("Student name unavailable")
        return
    }

    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }

    print("\(name) received \(mark) marks")
}

// Testing checkStudent function
checkStudent(name: nil, mark: 75)
checkStudent(name: "Kamal", mark: nil)
checkStudent(name: "Kamal", mark: 75)
