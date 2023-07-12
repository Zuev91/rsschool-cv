import Foundation

//Task1
let a : String? = "1"
let b : String? = "b"
var c : String? = nil
let d : String? = "3"
let e : String? = "4d"

var sum = 0

if let tmp = a {
    sum += Int(tmp) ?? 0
}
if let tmp = b {
    sum += Int(tmp) ?? 0
}
if let tmp = c {
    sum += Int(tmp) ?? 0
}
if let tmp = d {
    sum += Int(tmp) ?? 0
}
if let tmp = e {
    sum += Int(tmp) ?? 0
}

print("Summary of integers elements \(a ?? "nil"), \(b ?? "nil"), \(c ?? "nil"), \(d ?? "nil"), \(e ?? " nil") is equal \(sum)")
print("Summary of integers elements " + (a ?? "nil") + ", " + (b ?? "nil") + ", " + (c ?? "nil") + ", " + (d ?? "nil") + ", " + (e ?? "nil") + " is equal " + String(sum))

//Task2
let firstCharacter = "\u{1F41D}"
let secondCharacter = "\u{1F33C}"
let thirdCharacter = "\u{2600}"
let fourhCharacter = "\u{1F60A}"
let fifthCharacter = "\u{270C}"

let result = firstCharacter + secondCharacter + thirdCharacter + fourhCharacter + fifthCharacter
print(result.count)
print((result as NSString).length)

//Task3
let alphabet = "abcdefghijklmnopqrstuvwxyz"
let findingCharacter : Character = "f"

var index = 0

for value in alphabet {
    index += 1
    if value == findingCharacter {
        break
    }
}
print(index)
