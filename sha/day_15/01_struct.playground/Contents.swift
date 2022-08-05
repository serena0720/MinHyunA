import Cocoa

var global = 9999 // 전역변수
struct AAA{ // 구조체의 정의.
    //정의선언 : 모양이 ~하다. / 선언은 나는 이런아이야.
    //프로퍼티 (=속성, 멤버변수, 필드)
    var a = 10
    var b:String // 초기값이 없는 프로퍼티는 생성 시 초기화 해야 한다.
    let c:Double
    
    // 프로퍼티 대입(변경) 시 mutating 필요
    mutating func fn_1(aa:Int, bb:String){
        // 구조체 자체가 스스로 뭔가를 할 수 있다.
        print("AAA.fn_1() 실행1 \(aa),\(bb)")
        //프로퍼티를 메소드에서 호출 대입 가능
        global += 1
        self.a += 1 // 안에서 부를 땐, self. 을 붙여야함. 내거만 변경.
        print("AAA.fn_1() 실행2 \(a),\(b),\(c),\(global)")
    }
    mutating func fn_2(cc:Double){
        print("AAA.fn_2() 실행1 \(cc)")
        global += 1 // 전역변수이기 때문에 fn_1에서의 변화가 누적됨.
        self.a += 1
        print("AAA.fn_2() 실행2 \(a),\(b),\(c),\(global)")
    }
}
/*
 원래 정의 식
 func fn_1(aa:Int, bb:String){
     print("AAA.fn_1() 실행1 \(aa),\(bb)")
     //프로퍼티를 메소드에서 호출 대입 가능
     global += 1
     print("AAA.fn_1() 실행2 \(a),\(b),\(c),\(global)")
 }
func fn_2(cc:Double){
     print("AAA.fn_2() 실행1 \(cc)")
     global += 1 // 전역변수이기 때문에 fn_1에서의 변화가 누적됨.
     print("AAA.fn_2() 실행2 \(a),\(b),\(c),\(global)")
 }
}
 */

var a1 = AAA(b:"나는문어",c:123.456) // 각자의 핸드폰
//b,c처럼 초기값이 없는 프로퍼티는 매개변수로 초기화 필수

var a2 = AAA(b:"나는상어", c:987.654) // 각자의 핸드폰

//초기화 이후 변수 값을 바꾸는 방법.
a1.a = 100
//a1.c = 234.3 // c는 let으로 정의했기 때문에 변경 불가능.
a2.b = "나는인간"
//a1.d = 1234 // 정의하지 않은 프로퍼티 선언이나 대입 호출 불가. 정의된 것만 사용 가능.

print("a1: \(a1)")
print("a2: \(a2)")

print("a1:\(a1.a), \(a1.b), \(a1.c)")
print("a1-----------------------------")
a1.fn_1(aa: 111, bb: "현빈")
a1.fn_2(cc:111.111)
print("a2-----------------------------")
a2.fn_1(aa: 222, bb: "원빈")
a2.fn_2(cc:222.222)
