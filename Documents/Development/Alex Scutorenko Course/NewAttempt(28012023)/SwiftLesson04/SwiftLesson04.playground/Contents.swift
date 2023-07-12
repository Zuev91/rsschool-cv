//Task1

let a = "123"
let b = "123a"
let c = "abc"
let d = "321"
let e = "aaa"

var sum = 0
sum += Int(a)!
if let tmp = Int(b) {
    sum += tmp
}
if let tmp = Int(c) {
    sum += tmp
}
if let tmp = Int(d) {
    sum += tmp
}
if let tmp = Int(e) {
    sum += tmp
}

print(sum)

//Task2

let serverResponse : (statusCode : Int, message : String?, errorMessage : String?) = (100, "Some string", "Some error string")

if serverResponse.statusCode >= 200 && serverResponse.statusCode < 300 {
    if let tmp = serverResponse.message { print(tmp) }
} else {
    if let tmp = serverResponse.errorMessage { print(tmp) }
}
let anotherServerResponse : (message : String?, errorMessage : String?) = ("One more message" , nil)

if let tmp = anotherServerResponse.message {
    print(tmp)
} else {
    print(anotherServerResponse.errorMessage!)
}
