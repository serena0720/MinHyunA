import Cocoa
var gg = 9999
struct AAA{ //구조체의 정의
    
    //프로퍼티 (속성, 멤버변수, 필드)
    var a = 10
    var b:String  //초기값이 없는 프로퍼티는 생성시 초기화 해야 한다.
    let c:Double
    
    //프로퍼티 대입(변경)시 mutating 필요
    mutating func fn_1(aa:Int, bb:String){
        print("AAA.fn_1() 실행1 \(aa), \(bb)")
        //프로퍼티를 메소드에서 호출 대입 가능
        gg += 1
        self.a += 1 //프로퍼티를 대입시 self 지정을 해야 한다.
        print("AAA.fn_1() 실행2 \(a), \(b), \(c), \(gg)")
    }
    mutating func fn_2(cc:Double){
        gg += 1
        self.a += 1
        print("AAA.fn_2() 실행 \(cc)")
        print("AAA.fn_2() 실행2 \(a), \(b), \(c), \(gg)")
    }
}

var a1 = AAA(b:"나는무너",c:123.456)
          //생성시 정의단계에서 초기화되지 않은 프로퍼티를 매개변수로 초기화 필수
var a2 = AAA(b:"나는상어",c:987.654)
a1.a = 100
//a1.c = 246.88
a2.b = "나는비행기"
//a1.d = 1234  정의하지 않은 프로퍼티 선언 이나 대입 호출 불가
print("a1: \(a1)")
print("a2: \(a2)")

print("a1: \(a1.a), \(a1.b), \(a1.c)")
print("a1----------------------")
a1.fn_1(aa: 111, bb: "현빈")
a1.fn_2(cc:111.111)
print("a2----------------------")
a2.fn_1(aa: 222, bb: "원빈")
a2.fn_2(cc:222.222)
