//Task1
var stringOfCharacters = "eXt59WsUlCeST0JkuQznugr9dC4XUS9jQGl3nZSWuUNjDrzrSQAKZZNerQ9CYw5wzlQckR3cBRcbZ2xi7snRgFlv0b86B15NsfaAly5yRgeFmlMtQqh2LfWSokxsEFDwTki6BXWl1oVo5UCxA2gnO2buSX5QVlVzh9DLRd!@#$%^lZ4RSirVDrFTlKFLqNo7HJaHfymAM"

var countOfVowels = 0
var countOfConsanants = 0
var countOfNumbers = 0
var countOfOtherCharacters = 0

while stringOfCharacters.count > 0 {
    switch stringOfCharacters.removeFirst() {
    case "0"..."9": countOfNumbers += 1
    case "a", "e", "i", "o", "u", "A", "E", "I", "O", "U": countOfVowels += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z": countOfConsanants += 1
    default: countOfOtherCharacters += 1
    }
}


//Task2
let age = 99
switch age {
case 0, 1: print("Infant")
case 2...4: print("Toddler")
case 5...12: print("Child")
case 13...19: print("Teen")
case 20...39: print("Adult")
case 40...59: print("Middle Age Adult")
case 60...: print("Senior Adult")
default: print("Wrong age")
}

//Task3
let student = (surname: "Ivanov", firstName: "Ivan", patronymic: "Ivanovich")

switch student {
case (_, let tmp, _) where tmp.hasPrefix("A") || tmp.hasPrefix("O"): print(student.firstName)
case(_,_, let tmp) where tmp.hasPrefix("V") || tmp.hasPrefix("D"): print("\(student.firstName) \(student.patronymic)")
case (let tmp, _, _) where tmp.hasPrefix("E") || tmp.hasPrefix("Z"): print(student.surname)
default: print("\(student.surname) \(student.firstName) \(student.patronymic)")
}

//Task4
//let countOfLines = 10
//let countOfColumns = 10
let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var boat1 = [(alphabet[1], 0)]
var boat2 = [(alphabet[3], 5)]
var boat3 = [(alphabet[6], 6)]
var boat4 = [(alphabet[9], 5)]

var boat5 = [(alphabet[1], 6), (alphabet[2], 6)]
var boat6 = [(alphabet[5], 1), (alphabet[6], 1)]
var boat7 = [(alphabet[3], 8), (alphabet[3], 9)]

var boat8 = [(alphabet[8], 0), (alphabet[8], 1), (alphabet[8], 2)]
var boat9 = [(alphabet[5], 8), (alphabet[6], 8), (alphabet[7], 8)]

var boat10 = [(alphabet[1], 3), (alphabet[2], 3), (alphabet[3], 3), (alphabet[4], 3)]

var fleet = [boat1, boat2, boat3, boat4, boat5, boat6, boat7, boat8, boat9, boat10]
var tmp  = Array(fleet.joined())
let tgt = (x: "d", y: 3)
let tgtXInInt = alphabet.firstIndex(of: tgt.x)!
let tmpArray = [tgt, (alphabet[tgtXInInt + 1], tgt.y), (alphabet[tgtXInInt - 1], tgt.y), (tgt.x, tgt.y + 1), (tgt.x, tgt.y - 1)]
var count = 0
for value in tmp {
    for i in tmpArray {
        if i == value {
            count += 1
        }
    }
}
switch count {
case 1: print("Killed")
case 2...5: print("Injured")
default: print("Miss")
}

