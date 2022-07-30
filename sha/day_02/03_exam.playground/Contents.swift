import Cocoa

// sha 풀이
var 초코파이가격 : Int, 수량 :Int , 합계 :Int
초코파이가격 = 300
수량 = 5
합계 = 초코파이가격 * 수량

print("초코파이가격:", 초코파이가격)
print("수량:", 수량)
print("합계:",합계)

// 선생님 풀이
var name = "sha"
var kor = 88, eng = 72, mat = 91
var tot = kor + eng + mat
// var avg = tot / 3
// var avg = 251.0 / 3  // 소숫점으로 결과가 나옴. 이것을 명령어로
var avg = Double(tot) / 3  // 이를 소숫점 두자리에서 끊고 싶다.
var avg2 = Int(avg*100)
var avg3 = Double(avg2)
var avg4 = avg3/100

print("이름:",name)
print("국어:",kor)
print("영어:",eng)
print("수학:",mat)
print("총점:",tot)
print("평균:",avg)  // 소숫점이 나올 수 있는 경우 다른 타입으로 호환시키고 싶을 때.
/*
 형변화 (Casting) ex) 정수를 실수롤 바꾸는 것
 */
print("소숫점 2자리 평균:", avg4)

// 반올림 할 수 있는 방법?

/*
 let name = "sha"
 let kor = 88, eng = 72, mat = 91
 let tot = kor + eng + mat
 let avg = tot / 3
 print("이름:",name)
 print("국어:",kor)
 print("영어:",eng)
 print("수학:",mat)
 print("총점:",tot)
 print("평균:",avg)
*/

var res = avg >= 90 ? "수" :
         avg >= 80 ? "우" :
         avg >= 70 ? "미" :
         avg >= 60 ? "양" : "가"
print("\(avg) : \(res)")
