import Cocoa

var a = 10      //변수 선언 및 초기화
print("a:",a)        //변수 호출

a = 20          //변수 대입
print("a:",a)

var b:Int       //변수 선언 : 초기화 되지 않음
b = 100
print("b:", b)

var c:Int
//print("c:", c)  // 초기화 되지 않은 변수 사용불가

var d = a       //a호출 하여 d에 초기화
                //a 변수에 들어있는 값을 복사하여 d 변수에 넣는다.
//a : 20, d: 20
print("a:",a, "d:",d)
a = 30  //a 대입  --> d와 관련없음
print("a:",a, "d:",d)

//var e = f = 1234  정의되지 않은 변수로 대입 불가
var g = 1234, h = 5678, k = g // 다중 변수 선언과 초기화 가능
//다중 선언시 변수 선언 순서
// 좌 -> 우

var q = 10, w = 20
var t = q * w
print(q,w,t)

var name = "장동건"

print(name)

var studentnumber = 32
print(studentnumber)
var studnum = 45
print(studnum)
var studNum = 27
print(studNum)
var stud_num = 19
print(stud_num)
