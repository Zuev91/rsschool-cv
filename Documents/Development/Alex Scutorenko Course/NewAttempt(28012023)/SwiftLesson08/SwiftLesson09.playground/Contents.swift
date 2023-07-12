//Task1
var journalOfStudents = [String: Int]()
journalOfStudents["Robert Miller"] = 5
journalOfStudents["Barbara Harvey"] = 4
journalOfStudents["Steven Smith"] = 3
journalOfStudents["Pamela Perez"] = 4
journalOfStudents["Bobbie Butler"] = 5


journalOfStudents.updateValue(5, forKey: "Steven Smith")
journalOfStudents.updateValue(3, forKey: "Bobbie Butler")

journalOfStudents["Jeremy Lee"] = 3
journalOfStudents["James White"] = 4

journalOfStudents.removeValue(forKey: "Robert Miller")
journalOfStudents.removeValue(forKey: "Pamela Perez")

var sum = 0
for value in journalOfStudents.values {
    sum += value
}
print("Sum = \(sum)")

let avgScore = Double(sum) / Double(journalOfStudents.count)
print("Average score = \(avgScore)")

//Task2
var calendar = ["January" : 31,
                "February" : 28,
                "March" : 31,
                "April" : 30,
                "May" : 31,
                "June" : 30,
                "July" : 31,
                "August" : 31,
                "September" : 30,
                "October" : 31,
                "November" : 30,
                "December" : 31]
for value in calendar {
    print("\(value.key) : \(value.value)")
}

for value in calendar.keys {
    if let tmp = calendar[value] {
        print("\(value) : \(tmp)")
    }
}


//Task3
var chessDeck = [String : Bool]()
let letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
let numbers = [1, 2, 3, 4, 5, 6, 7, 8]

for (index, value) in letters.enumerated() {
    for number in numbers {
        if (index + number) % 2 == 0 {
            chessDeck["\(value)\(number)"] = true
        } else {
            chessDeck["\(value)\(number)"] = false
        }
    }
}
print(chessDeck)

