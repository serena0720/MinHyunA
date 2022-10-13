import Cocoa

class AAA{
    
    var aa = 10
    let bb = 20
    var cc:Int
    let dd:Int
    
    init(){
        cc = 333
        dd = 444
    }
    
    var ee:Int{ //set 이 없으면 read-only : let 와 같음
        get{
            print("ee.get 실행")
            return 5050
        }
    }
    
    var ff:Int{
        get{
            print("ff.get 실행")
            return 6060
        }
        set{
            //newValue  : 대입값
            print("ff.set 실행 \(newValue)")
        }
    }
    
    var gg:Int{
        get{
            print("gg.get 실행")
            return 7070
        }
        set(qwer){ //대입값을 매개변수로 명시 처리
                    //newValue 사용 불가
            //print("gg.set 실행 \(newValue)")
            print("gg.set 실행 \(qwer)")
        }
    }
    
}
var a1 = AAA()
print("a1:\(a1.aa), \(a1.bb), \(a1.cc), \(a1.dd), \(a1.ee), \(a1.ff), \(a1.gg)")
a1.aa = 1111
//a1.bb = 2222
a1.cc = 3333
//a1.dd = 4444
//a1.ee = 5555
a1.ff = 6666 //set 실행 --> get에 직접적인 영향 없음
a1.gg = 7777
print("a1:\(a1.aa), \(a1.bb), \(a1.cc), \(a1.dd), \(a1.ee),\(a1.ff), \(a1.gg)") // ff는 반영되지 않음
