//Task1

let dateOfBirthday = (month: "May", day: 17, year: 1991)

let january = (title: "January", countOfDays: 31)
let february = (title: "February", countOfDays: 28)
let march = (title: "March", countOfDays: 31)
let april = (title: "April", countOfDays: 30)
let may = (title: "May", countOfDays: 31)
let june = (title: "June", countOfDays: 30)
let july = (title: "July", countOfDays: 31)
let august = (title: "August", countOfDays: 31)
let septemper = (title: "September", countOfDays: 30)
let october = (title: "October", countOfDays: 31)
let november = (title: "November", countOfDays: 30)
let december = (title: "December", countOfDays: 31)

let countOfDaysTillBday = january.countOfDays + february.countOfDays + march.countOfDays + april.countOfDays + dateOfBirthday.day
let secondsInDay = 60 * 60 * 24

let result = (countOfDaysTillBday - 1) * secondsInDay
print(result)

//Task2
let firstQuater = ("January", "February", "March")
let secondQuater = ("April", "May", "June")
let thirdQuater = ("July", "August", "September")
let fourthQuater = ("October", "Novermber", "December")

if dateOfBirthday.month == firstQuater.0 || dateOfBirthday.month == firstQuater.1 || dateOfBirthday.month == firstQuater.2 {
    print("First Quater")
} else if dateOfBirthday.month == secondQuater.0 || dateOfBirthday.month == secondQuater.1 || dateOfBirthday.month == secondQuater.2 {
    print("Second Quater")
} else if dateOfBirthday.month == thirdQuater.0 || dateOfBirthday.month == thirdQuater.1 || dateOfBirthday.month == thirdQuater.2 {
    print("Third Quater")
} else {
    print("Fourth Quater")
}

//Task3
let cell = (x: 4, y: 3)
if (cell.x + cell.y) % 2 == 1 {
    print("White")
} else {
    print("Black")
}
