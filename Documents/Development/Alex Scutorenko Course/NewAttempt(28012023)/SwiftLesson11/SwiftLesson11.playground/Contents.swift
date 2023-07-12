let names = ["Chris", "Alex", "Ewa", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

func mySorted(_ arr: [String]) -> [String] {
    var result : [String] = arr
    var tmp = ""
    for index in 0...(result.count - 2) {
        for i in (index + 1)...(result.count - 1) {
            if result[index] > result[i] {
                tmp = result[index]
                result[index] = result[i]
                result[i] = tmp
            }
        }
    }
    return result
}

print(mySorted(names))

names.max()

func anotherSorted(_ arr: [String]) -> [String] {
    var result : [String] = []
    var tmp = arr
    while !tmp.isEmpty {
        if let someValue = tmp.min() {
            result.append(someValue)
            tmp.remove(at: tmp.firstIndex(of: someValue)!)
        }
    }
    return result
}
//print(anotherSorted(names))

//func anotherSorted(_ arr: [String], _ inRow: (String) -> Bool) -> [String] {
//    var result : [String] = []
//
//    return result
//}

var operation : ([String]) -> [String]

operation = {(arr) in
    var result : [String] = []
    var tmp = arr
    /*while !tmp.isEmpty*/for _ in tmp {
        if let someValue = tmp.min() {
            result.append(someValue)
            tmp.remove(at: tmp.firstIndex(of: someValue)!)
        }
    }
    return result
}

operation(names)

reversedNames = names.sorted(by: {s1, s2 in s1 > s2})
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { number -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
                return output
}
print(strings)

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}
let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()


var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

func someFunctionWithNoneEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNoneEscapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)

var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Выведет "5"
 
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// Выведет "5"
 
print("Now serving \(customerProvider())!")
// Выведет "Now serving Chris!"
print(customersInLine.count)
// Выведет "4"

func serve(customer customerProvider: @autoclosure() -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))

var customerProviders: [() -> String] = []
func collectCustomersProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}
collectCustomersProviders(customersInLine.remove(at: 0))
collectCustomersProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures")

for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!")
}
///********************
let OneMoreNumbers = [4, 3, 2, 5, 6, 7, 8, 9, 55, 11]

func filterArray(_ array: [Int], _ f: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()
    for i in array {
        if f(i) {
            filtered.append(i)
        }
    }
    return filtered
}

//func compare(i: Int) -> Bool {
//    return i % 2 == 0
//}
//MARK: simple form
filterArray(numbers) {$0 % 2 == 0}





//Task1
func taskOneFunction (_ value: () -> ()) -> () {
    for i in 1...10 {
        print(i)
    }
    value()
}
taskOneFunction(){print("Hello")}

//Task2
let taskTwoNumbers = [3, 4, 1, 2, 6, 4, 5, 6, 3, 8]
taskTwoNumbers.sorted(by: >)
taskTwoNumbers.sorted(by: <)

//Task3
func taskThreeFunction(_ arr: [Int], _ closure: (Int, Int?) -> Bool) -> Int? {
    var optOperand : Int?
    for value in arr {
        if closure(value, optOperand) {
            optOperand = value
        }
    }
    return optOperand != nil ? optOperand! : nil
}

taskThreeFunction(taskTwoNumbers){
    if let tmp = $1 { return $0 < tmp }
    else { return true }
}

taskThreeFunction(taskTwoNumbers){
    if let tmp = $1 { return $0 > tmp }
    else { return true }
}

//Task4
let taskString = "zJmkaae4Y$R35K#aIUbV7@1OyWkwGN!9WDH8"
var arrayOfStrings = taskString.map{ String($0) }

func characterPriority(_ tmp: String) -> Int {
    switch tmp.uppercased() {
    case "A", "E", "I", "O", "U": return 1
    case "B", "C", "D", "F", "G", "J", "K", "L", "M", "N", "P", "Q", "S", "T", "V", "X", "Z", "H", "R", "W", "Y": return 2
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0": return 3
    default: return 4
    }
}

print(arrayOfStrings.sorted{
    if characterPriority($0) == characterPriority($1) {
        return $0 < $1
    } else {
        return characterPriority($0) < characterPriority($1)
    }
})

//Task5
//Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
//Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
func taskFiveFunction (_ arr: [Character], _ closure: (Character, Character?) -> Bool) -> Character? {
    var optOperand : Character?
    for value in arr {
        if closure(value, optOperand) {
            optOperand = value
        }
    }
    return optOperand != nil ? optOperand! : nil
}
print("Min:" + String(taskFiveFunction(arrayOfStrings.map{Character($0)}) {
    if let tmp = $1 { return tmp > $0}
    else { return true }
}!))
print("Max:" + String(taskFiveFunction(arrayOfStrings.map{Character($0)}) {
    if let tmp = $1 { return tmp < $0}
    else { return true }
}!))
