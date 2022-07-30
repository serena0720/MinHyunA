import Cocoa

var pp1 = ("원빈", 48, true)

print("pp1: \(pp1)")

pp1.0 = "현빈"
pp1.1 = 34
print("pp1: \(pp1.0), \(pp1.1), \(pp1.2)")

var nn:String
var age:Int
var marriage:Bool
(nn, age, marriage) = pp1
print(nn)
print(age)
print(marriage)

for i in 0...2{
    //print(i, pp1.i)
}


var pp2:(name:String, age:Int, marriage:Bool) = ("투빈", 19,false)
print(pp2)
print(pp2.0)
print(pp2.name)
//print(pp2."name")
//pp2.3 = 1234

typealias Person = (name:String, age:Int, marriage:Bool)

//var pp3:Person = 123
var pp4:Person = ("장희빈",29, true)
print(pp4)
