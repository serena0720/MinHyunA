import Cocoa

var a:Int  //초기값 없이 변수 호출 불가
var b = 20
var c:Int?  //optional  : nil 을 허용  초기화 하지 않으면 nil
//print("\(a), \(b)")
a = 10
print("\(a), \(b), \(c)")
c = 30
print("\(a), \(b), \(c)")
//optional 변수는 값이 있을지라도 nil 일 경우를 고려하여 optional 표기
print(a+1)
print(b+1)
//print(c+1)   nil일 수도 있기에 직접 연산 불가
