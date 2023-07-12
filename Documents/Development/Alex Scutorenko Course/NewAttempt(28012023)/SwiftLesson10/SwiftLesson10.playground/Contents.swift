//MARK: Doca examples
func greet(person: String) -> String {
    let greeting = "Hi," + person + "!"
    return greeting
}

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

func sayHellloWorld() -> String {
    return "hello, world"
}

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

print(greet(person: "Tim", alreadyGreeted: true))

func anotherGreet(person: String) {
    print("Hi, \(person)!")
}
anotherGreet(person: "Dave")

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "hello, world")
printWithoutCounting(string: "hello, world")

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)"
}
print(greet(person: "Bill", from: "Cupertino"))

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)

//MARK: HomeWork
//Task1
func heart() -> Character {
    return "\u{1F493}"
}

func bee() -> Character {
    return "\u{1F41D}"
}

func fish() -> Character {
    return "\u{1F41F}"
}

func panda() -> Character {
    return "\u{1F43C}"
}

print("\(heart())\(bee())\(fish())\(panda())")


//Task2
func colourCheck(row: String, column: Character) -> String {
    let alphabet: [Character: Int] = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
    return Int(row)! % alphabet[column]! == 0 ? "black" : "white"
}

let colourOfCell = colourCheck(row: "4", column: "b")
print(colourOfCell)


//Task3
func reverseArray(arr: [Int]) -> [Int] {
    var tmp = arr
    var result = [Int]()
    while tmp.count != 0 {
        result.append(tmp.removeLast())
    }
    return result
}

//Task4
func reverseOriginalArray(arr: inout [Int]) {
    var result = [Int]()
    while arr.count != 0 {
        result.append(arr.removeLast())
    }
    arr = result
}
var someArray = [1, 2, 3]
reverseOriginalArray(arr: &someArray)
print(someArray)


//Task5
func someFunc(someString: String) -> String {
    var result = String()
    let numbers : [Character: String] = ["1": "one", "2": "two", "3": "three", "4": "four", "5": "five", "6": "six", "7": "seven", "8": "eight", "9": "nine", "0": "zero"]
    for value in someString {
        switch value.uppercased() {
        case "A", "E", "I", "O", "U": result.append(value.uppercased())
        case "B", "C", "D", "F", "G", "J", "K", "L", "M", "N", "P", "Q", "S", "T", "V", "X", "Z", "H", "R", "W", "Y": result.append(value.lowercased())
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0": result.append(numbers[value]!)
        default: continue
        }
    }
    return result
}

print(someFunc(someString: "1Jv02R0Y.,kCbe4zuTIK4RvKARdCL8.pjAG"))
