import Cocoa

var kor = 89
var eng = 79
var mat = 89
var tot = kor + eng + mat
var avg = tot/3

if avg >= 90{
    print("수")
}else if avg >= 80{
    if kor < 90, eng < 90, mat < 90,
       kor >= 80, eng >= 80, mat >= 80{
        print("우(균등)")}
    else{print("우")}
}else if avg >= 70{
        print("미")
}else if avg >= 60{
        print("양")
}else{
        print("가")
}

/* 선생님 풀이

let pos = 1000.0
let name = "정우성"
let kor = 88, eng = 71, mat = 91
var tot = kor + eng + mat
var avg = Double(tot) / 3

 var res2:String  // 프린트하고자 하는 내용을 정의하였다 -- 중복되는 내용 방지 가능

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
 print("등급2: \(res2)")
 
 */
