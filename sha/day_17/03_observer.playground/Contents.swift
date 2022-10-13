import Cocoa

class AAA{
    var a = 10
    var b:Int{
        get{
            print("AAA.b_get() 실행")
            return 20
        }
        set{
            print("AAA.b_set() 실행\(newValue)")
        }
    }
    
    var c:Int=30{ // 초기값이 있는 형태
        willSet{
            print("AAA.c_willset():\(c)->\(newValue)")
        }
        didSet{
            print("AAA.c_didset():\(oldValue)->\(c)")
        }
    }
    var d:Int=40{
        didSet{
            //만약 0 <= d <= 100를 원한다.
            if d > 100 || d < 0{
                print("입력 값 에러")
                d = oldValue // 범위를 넘으면 이전 값으로 돌려 놓는다.
            }
            print("AAA.d_didset():\(oldValue)->\(d)")
        }
    }
    func ppp(){
        print("AAA : \(a) , \(b) , \(c) , \(d)")
    }
}
var a1 = AAA()
a1.ppp()
a1.a = 111
a1.b = 222
a1.c = 333 // 대입을 하니까 willSet, didSet 실행
a1.d = 400
a1.ppp()
