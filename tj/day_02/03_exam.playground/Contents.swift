import Cocoa
let pos = 1000.0
let name = "정우성"
let kor = 88, eng = 81, mat = 91
var tot = kor + eng + mat
var avg = Double(tot) / 3
var avg2 = Double(Int(avg * pos + 0.5)) / pos

var res =   avg >= 90 ? "수" :
            avg >= 80 ? "우" :
            avg >= 70 ? "미" :
            avg >= 60 ? "양" : "가"

var res2:String

if avg >= 90 {
    res2 = "수"
} else if avg >= 80 {
    res2 = "우"
    if kor >= 80 && eng >= 80 && mat >= 80 {
        res2 += "(균등)"
    }
} else if avg >= 70 {
    res2 = "미"
} else if avg >= 60 {
    res2 = "양"
}else{
    res2 = "가"
}

print("이름:",name)
print("국어:",kor)
print("영어:",eng)
print("수학:",mat)
print("총점:",tot)
print("평균:",avg)
print("평균2: \(avg2)") //83.333  , 83.667
print("등급: \(res)")
print("등급2: \(res2)")
/*
 83.33333333333333
 8333.333333333333 + 0.5
 8333.833333333333
 
 83.66666666666667
 8366.666666666667 + 0.5
 8367.166666666
 8366
 8366.0
 83.66
 */



