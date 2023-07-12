//Task1
let monthsInYear = [("January", 31), ("February", 28), ("March", 31), ("April", 30), ("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

print(monthsInYear)
var months = [String]()
var countOfDaysInMonths = [Int]()
for value in monthsInYear {
    months.append(value.0)
    countOfDaysInMonths.append(value.1)
}
print(months)
countOfDaysInMonths = countOfDaysInMonths.reversed()
print(countOfDaysInMonths)

let birthDay = ("May", 17)
var sum = birthDay.1 - 1

for value in monthsInYear {
    if value.0 == birthDay.0 {
        break
    } else {
        sum += value.1
    }
}

print("Count of days before bday = \(sum)")


//Task2
let arrayOfOptionals = [5, nil, nil, 6, -7, 8, nil]
var result = 0

for value in arrayOfOptionals {
    if let tmp = value {
        result += tmp
    }
}
print(result)
result = 0

for value in arrayOfOptionals {
    if value != nil {
        result += value!
    }
}
print(result)
result = 0

for value in arrayOfOptionals {
    result += value ?? 0
}
print(result)


//Task3
var arrayOfCharacters = [String]()
let alphabet = "abcdefghijklmnopqrstuvwxyz"

for value in alphabet.reversed() {
    arrayOfCharacters.append(String(value))
}
print(arrayOfCharacters)
