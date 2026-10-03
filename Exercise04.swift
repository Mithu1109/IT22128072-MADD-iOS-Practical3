// SE4041 – Mobile Application Design & Development
// Practical 03 – Exercise 04: Closures, map, filter, and reduce

let marks = [72, 45, 65, 48, 90]

// MARK: - filter
let passed = marks.filter { $0 >= 50 }
print(passed)

// MARK: - map
let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks)

// MARK: - reduce
let total = marks.reduce(0) { $0 + $1 }
print(total)

// MARK: - Activity 5: Product Prices using Closures
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

// 1. Prices greater than 100
let highPrices = prices.filter { $0 > 100 }
print(highPrices)

// 2. Prices increased by 10
let updatedPrices = prices.map { $0 + 10 }
print(updatedPrices)

// 3. Total of all prices
let totalPrice = prices.reduce(0.0) { $0 + $1 }
print(totalPrice)
