//Task1
var stats = (pushUps: 10, squats: 15, pullUps: 20)
print(stats)
print("Count of push-ups: \(stats.pushUps)")
print("Count of suqats: \(stats.1)")
print("Count of pull-ups: \(stats.pullUps)")

var friendStats = stats
friendStats = (11, 9, 30)
var tmp = stats
stats = friendStats
friendStats = tmp
let difference = (abs(stats.pushUps - friendStats.pushUps), abs(stats.1 - friendStats.1), abs(stats.2 - friendStats.2))
print(difference)
