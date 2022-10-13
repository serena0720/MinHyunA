import Cocoa

var arr1 = [3,7,15,47,12,32,8]

//짝수만 고르려 함.
func even(_ no:Int)->Bool{
    return no % 2 == 0
}

print(even(13))
print(even(8))

var res1 = [Int]()

for i in arr1{
    if even(i) {
        res1.append(i)
    }
}

print("res1 : \(res1)")

//줄이면
var res2 = arr1.filter(even)
print("res2 : \(res2)")
//아래와 동일
var res3 = arr1.filter{ $0 % 2 == 0}
print("res3 : \(res3)")





typealias Stud = (name:String, jum:Int)

let studs:[Stud] = [
    ("정우성", 88),
    ("정좌성", 78),
    ("정남성", 48),
    ("정중성", 88),
    ("정북성", 98),
    ("조인성", 58),
    ("감우성", 82)
]

var rr1:[Stud] = []

for st in studs{
    if st.jum >= 70 {
        rr1.append(st)
    }
}
print(rr1)

var rr11:[String] = []
for st in rr1{
    rr11.append(st.name)
}
print(rr11)


var rr2 = studs.filter{$0.jum >= 70}
print(rr2)
// 이 안의 이름만 빼오기
var rr22 = rr2.map{$0.name}
print(rr22)

//위의 것을 한번에 합침
var rr3 = studs.filter{$0.jum >= 70}.map{$0.name}
print(rr3)
