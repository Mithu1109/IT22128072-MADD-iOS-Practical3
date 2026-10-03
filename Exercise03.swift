// SE4041 – Mobile Application Design & Development
// Practical 03 – Exercise 03: Tuples

// MARK: - Example: Returning Multiple Values Using a Tuple
func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)

    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let result = summary(of: [72, 65, 48, 90])
print(result.minimum)
print(result.maximum)
print(result.average)

// MARK: - Tuple Unpacking
let (low, high, average) = summary(of: [72, 65, 48, 90])
print(low)
print(high)
print(average)

// Ignoring a value with wildcard '_'
let (lowest, highest, _) = summary(of: [72, 65, 48, 90])
print(lowest)
print(highest)

// MARK: - Activity 4: analyzeMarks
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    let avg = marks.isEmpty ? 0.0 : Double(total) / Double(marks.count)
    return (total, avg)
}

let analysis = analyzeMarks([60, 70, 80, 90])
print("Total: \(analysis.total)")
print("Average: \(analysis.average)")
