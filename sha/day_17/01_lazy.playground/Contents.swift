import Cocoa

class AAA{
    var a = 10
    let b = 20
 
    func setC()->Int{
        print("setC() 실행")
        return 333
    }
    // 변수가 먼저 초기와 되어야 생성이 가능
    // 초기화 과정에서 메소드(함수) 연산 불가
    //var c = setC()

    //lazy --> 지연 연산 : 생성 시 나중에 처리 : 최초 호출 시 실행
    lazy var d = setD()
    
    func setD()->Int{
        print("setD() 실행")
        return 444
    }
    
    lazy var e = setE()
    
    func setE()->Int{
        print("setE() 실행")
        return 555
    }
    
    init(){
        print("AAA 기본생성자") // lazy는 생성자보다도 늦게 실행 됨
    }
}

// 일반적인 형태
var aa = 10
let bb = 20

func setCC()->Int{
    print("setC() 실행")
    return 333
}

var cc = setCC()
print("\(aa), \(bb), \(cc)")

var a1 = AAA()
print("a1.a:\(a1.a)")
print("a1.b:\(a1.b)")
print("a1.d:\(a1.d)")
a1.e = 1234 //호출 전 대입(초기화)가 실행되면 lazy구문 연산은 실행되지 않음.
print("-----------------------")
print("a1.e:\(a1.e)") // 호출 전 대입이 없으면 lazy구문 연산먼저 실행 후 대입값을 보여줌.
