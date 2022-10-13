import Cocoa

//class 와 struct의 차이
var cc = 333

class AAA{   //클래스의 정의
    var a = 10
    func fn_1(){
        print("AAA.fn_1() 실행 : \(a), \(cc)")
    }
}

struct BBB{
    var a = 10
    func fn_1(){
        print("BBB.fn_1() 실행 : \(a), \(cc)")
    }
}

var a1:AAA  //인스턴스 변수 선언
var b1:BBB

a1 = AAA()  //생성 및 변수 대입
b1 = BBB()

print("a1 : \(a1)") //인스턴스 변수 호출 --> 인스턴스의 정보가 호출됨.
print("b1 : \(b1)")

print("a1.a:\(a1.a)")
print("b1.a:\(b1.a)")

a1.fn_1()
b1.fn_1()

print("--------------------------")
var a2 = a1 //주소 복사 -> shallow copy : 얕은 복사
var b2 = b1 //값을 복사 -> deep copy : 깊은 복사

a1.a = 20
b1.a = 20

print("a1.a:\(a1.a)")
print("a2.a:\(a2.a)")
print("b1.a:\(b1.a)")
print("b2.a:\(b2.a)")

a1.fn_1()
a2.fn_1()
b1.fn_1()
b2.fn_1()

print("--------------------------")
//class와 struct의 상수 차이
var a3 = AAA() //class 상수화
let a4 = AAA() //주소 자체가 상수가 됨
var b3 = BBB() //struct 상수화
let b4 = BBB()

print("a3.a:\(a3.a)")
print("a4.a:\(a4.a)")
print("b3.a:\(a3.a)")
print("b4.a:\(a4.a)")

a3.a = 20 // 주소에 해당하는 멤버 대입 가능
a4.a = 20
b3.a = 20
// b4.a = 20 // 값의 형태이기 때문에 멤버 대입 불가

print("a3.a:\(a3.a)")
print("a4.a:\(a4.a)")

a3 = AAA()
// a4 = AAA() //주소를 새로 대입 받을 수 없다.
