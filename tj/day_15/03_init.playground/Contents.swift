import Cocoa

struct AAA{
    var a = 10
    var b:Int
    var c:Int
    
    init(){
        print("기본생성자 : \(a)")
        b = 222 //초기화 되지 않은 프로퍼티는 반드시 초기화 해야 한다.
        c = 333
        a = 111 //초기화 된 프로퍼티도 대입 가능
    }
    
    init(_ b:Int){
        print("사용자 정의 생성자1 ")
        self.b = b  //프로퍼티 = 매개변수
        a = 1010 //초기화 된 프로퍼티도 대입 가능
        c = 3030
        
        c = fn_1(aa:a, bb:b) //모든 프로퍼티 초기화 이후 메소드 호출 가능
    }
    
    func fn_1(aa:Int, bb:Int)->Int{
        print("fn_1() 실행:\(aa), \(bb)")
        return 1234
    }
    
    func ppp(){
        print("\(a),\(b),\(c)")
    }
}


//var a1 = AAA(b:20,c:20) //생성자 정의시 정의되지 않은 생성자로 생성불가
var a1 = AAA()
var a2 = AAA(2424)
a1.ppp()
a2.ppp()

