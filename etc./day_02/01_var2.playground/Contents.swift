import Cocoa

var a = 10  // 변수 선언 및 초기화
print(a)    // 변수 호출
a = 20     // 변수 대입
print("a:",a)

var b:Int  // 변수 선언 : 초기화 되지 않음
b = 100
print("b:", b)

var c:Int
//print("c:", c)  // 초기화 되지 않은 변수는 사용 불가

var d = a  // 이 상태 기준으로 a를 호출하여 d 를 초기화
a = 30    // a 변수에 들어있는 값을 복사하여 d 변수에 넣는다.
/* 이 순산은 d 와 관련이 없음*/
print("a:",a, "d:", d)

// var e = f= 1234  정의되지 않은 변수로 대입 불가
var g = 1234, h = 5678, k = g  // 다중 변수 선언과 초기화 가능
// 다중 선언 시 변수 선언 순서
// 순서는 좌 --> 우 방향

var q = 10, w = 20
var t = q * w
print(q,w,t)


var name = "sha"

print(name)

var studentnumber = 32
print(studentnumber)  // 변수 이름이 너무 길다

var studnum = 45
print(studnum)  // carmel 표기법 사용하여 줄인다

var studNum = 27
print(studNum)  // 합성어의 경우 단어 단위로 대문자 사용 , 대소문자 구분이 가능
/* 대소문자가 구분이 안되는 경우  -> 데이터 베이스의 경우 구분이 안됨
 under squar 표기법*/

var stud_num = 19
print(stud_num)
