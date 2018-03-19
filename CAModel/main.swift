import Foundation

/*var data = database()

data.addCollege(name: "UMass", actMid: 29, satMid: 1350, accept: 39.4, state: "MA", city: "Amherst", studentPop: 15000, schoolID: 5223, rank: 240)
data.addCollege(name: "Emory", actMid: 32, satMid: 1420, accept: 17.9, state: "GA", city: "Atlanta", studentPop: 7400, schoolID: 2523, rank: 29)
data.addCollege(name: "WashU", actMid: 33, satMid: 1460, accept: 12.5, state: "MI", city: "St. Louis", studentPop: 6360, schoolID: 8693, rank: 18)

print(data)*/

//data.removeCollege(name: "Emory")
//print(data)

/*
var p = profiles(name: "Seth", colleges: ["test", "testing", "good"])

print(p)*/
/*var str = ""                      //OLD collegeDatabase Description
 
 for i in sortedkeys {
 str += "\(i) Data:\n\(allColleges[i])\n\n"
 }
 print(sortedkeys)
 return str*/

var ac = collegeDatabase()
var data = database()
var p = profiles(name: "seth")
p.addCollege(name: "Princeton")
p.addCollege(name: "Harvard")
//print(ac)
print(ac)
//print(data)
var s = status(forCollege: "Harvard", numbOfLetters: 4, sentScores: 5, recQ: 3, supp: 5, doneSupp: 2, CaQ: true, releaseTransQ: true, interview: true, interQ: 4)
//print(s)

/*var p = profiles(name: "Seth")
p.addCollege(name: "Princeton")
p.addCollege(name: "Harvard")
p.addCollege(name: "University of Chicago")
print(p)*/
