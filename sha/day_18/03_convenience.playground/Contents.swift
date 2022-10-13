import Cocoa

class AAA{
    var a:String
    var b:Int
    var c:Bool
    
    init(){
        print("기본생성자")
        a = "배고파"
        b = 10
        c = true
    }
    
    /* 생성자 위임 호출 시 멤버 요소 대입은 생성자 호출 이후에 가능
    init(_ a:String){
        print("사용자 정의 생성자1")
        self.a = a
        b = 10
        c = true
        self.init("현아", 57)
    }
     */
    
    convenience init(_ a:String){
        print("사용자 정의 생성자1")
        self.init("현아", 57)
        self.a = a // 위임 생성자 호출 이후 멤버요소 대입 가능
    }
    
    init(_ a:String,_ b:Int){
        print("사용자 정의 생성자2")
        self.a = a
        self.b = b % 5
        self.c = b >= 60
    }
    
    func ppp(){
        print("\(a), \(b), \(c)")
    }
}

let a1 = AAA()
let a2 = AAA("치킨이 먹고 싶어")

a1.ppp()
a2.ppp()
