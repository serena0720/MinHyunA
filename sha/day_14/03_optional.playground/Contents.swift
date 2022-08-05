import Cocoa

var a:Int
var b = 20
var c:Int? // optional : nil을 혀용한다.

// print("\(a), \(b)") // 초기값 없이 변수 호출 불가
a = 10 // 값을 넣어줘야 호출 가능
print("\(a), \(b), \(c)") // c : nil로 호출이 됨.
c = 30
print("\(a), \(b), \(c)") // 결과 : 10, 20, Optional(30)
//optional 변수는 값이 있을지라도 nil 일 경우를 고려하여 optional 표기

print(a+1)
print(b+1)
//print(c+1) // nil일 수도 있기에 직접 연산 불가
print(c!+1) // ! optional 강제 연산자 -> 값이 있다는 것을 보증하여 연산 가능.

//a = nil // optional이 아니기 때문에 불가능
//b = nil
c = nil // optional 변수만 nil 대입 가능
//print(c!+1) // 형식상으로 에러가 아니나 실행 시 nil에 산술연산 시도를 하여 에러 발생
print(c ?? 123) // nil이면 123을, nil이 아니면 c의 값을 추출.
// 결과 : 123
c = 100
print(c ?? 123)
// 결과 : 100
