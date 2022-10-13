import Cocoa

class AAA{
    
    var a = 10
    static var b = 20
    let c = 30
    static let d = 40
    
    func fn_1(){
        print("AAA fn_1() 실행")
    }
    
    static func fn_2(){
        print("static AAA fn_2() 실행")
    }
    
    func fn_3(){
        print("AAA fn_3() 시작 \(a), \(AAA.b), \(c), \(AAA.d)-------")
        fn_1()
        AAA.fn_2()
        
        print("AAA fn_3() 끝---------")
    }
    
    static func fn_4(){
        // staticdms 멤버변수 a, c 는 접근 불가
        // static은 static만 접근 가능
        //print("static AAA fn_4() 시작  \(a), \(AAA.b), \(c), \(AAA.d)-------")
        
        print("static AAA fn_4() 시작  \(AAA.b), \(AAA.d), \(b), \(d)-------")
        // print("static AAA fn_4() 시작  \(b), \(d)-------")로도 가능 : 같은 static이기 때문.
        
        // fn_1() : 일반 메소드는 접근 불가
        AAA.fn_2()
        fn_2() // ->이렇게도 표기 가능
        
        print("static AAA fn_4() 끝---------")
    }
    
    func ppp(){
        //print("a:\(a), b:\(b), c:\(c), d:\(d)") : static 호출 불가
        print("a:\(a), AAA.b:\(AAA.b), c:\(c), AAA.d:\(AAA.d)")
    }
    
}

class BBB{
    var aa = 111
    func fn_1(){
        print("BBB.fn_1() 실행 : \(aa), \(AAA.b), \(AAA.d)")
        //static은 다른 class에서도 접근이 가능.
    }
}

var a1 = AAA()
var a2 = AAA()
var b1 = BBB()

a1.ppp()
a2.ppp()
print("----------------------------")

//대입
a1.a = 10000 // a1함수의 a에만 대입
//a1.b = 20000 : static이라서 불가
AAA.b = 20000 // a1, a2의 모든 b가 다 바뀐다.
//a1.c = 30000 : let으로 정의한 상수라서 불가
//a1.d = 40000 : static이라서 불가
a1.ppp()
a2.ppp()
a1.fn_1()
//a1.fn_2() : static
AAA.fn_2() // static이 들어간 함수 호출 시엔 이런 형태.
b1.fn_1()
print("----------------------------")
a1.fn_3()
AAA.fn_4()
