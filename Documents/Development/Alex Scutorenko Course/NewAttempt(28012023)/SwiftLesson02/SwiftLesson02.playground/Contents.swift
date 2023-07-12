//Task1

print(Int.min)
print(Int.max)
print(Int8.min)
print(Int8.max)
print(Int16.min)
print(Int16.max)
print(Int32.min)
print(Int32.max)
print(Int64.min)
print(Int64.max)
print(UInt.max)
print(UInt8.max)
print(UInt16.max)
print(UInt32.max)
print(Double.greatestFiniteMagnitude)
print(Float.greatestFiniteMagnitude)

//Task2

let a = 2
let b : Float = 2.5
let c = -3.0
let d = Int(Double(a) + Double(b) + c)
let e = Float(a) + b + Float(c)
let f = Double(a) + Double(b) + c

//Task3

if Double(d) < f {
    print("Double tochnee")
} else {
    print("Int tochnee")
}
