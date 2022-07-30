import Cocoa

var pp1 = ("원빈", 48, true)

print("pp1 : \(pp1)")  //res -- pp1 : ("원빈", 48, true)
print("pp1 : \(pp1.0),\(pp1.1),\(pp1.2)")
// .0 은 상수이다. 변수로 대체 불가능. --> for i in o...2 불가능.
// res -- pp1 : 원빈,48,true

//치환 가능
pp1.0 = "현빈"
pp1.1 = 34
print("pp1 : \(pp1.0),\(pp1.1),\(pp1.2)")

var nn:String
var age:Int
var marriage:Bool
(nn, age, marriage) = pp1
print(nn) // 별명 설정 가능.
print(age)
print(marriage)

for i in 0...2{
    //print(i, pp1.i)  // 배열처럼 사용불가능
}

var pp2:(name:String, age:Int, marriage:Bool) = ("투빈", 19, false)
print(pp2) // res -> (name: "투빈", age: 19, marriage: false)
print(pp2.name) // res ->투빈
print(pp2.0) // 0번째. res ->투빈
//print(pp2."name")
//pp2.3 = 1234 // 원소 추가 불가능.

//간소화 방법
typealias Person = (name:String, age:Int, marriage:Bool)
var pp4:Person = ("aaa", 29, true) // 지정한 형태에 맞춰서 입력해야 함.
print(pp4)

