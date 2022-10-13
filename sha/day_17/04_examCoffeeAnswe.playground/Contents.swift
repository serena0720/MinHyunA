import Cocoa

class Order{
    let price = ["아메리카노":2200, "아시아노":2400, "아프리카노":2500]
    var menu = ""
    
    var cnt = 0{
        didSet{
            if cnt > 9 || cnt < 1 {
                print("잔수 에러")
                cnt = 0 //oldValue 보다는 0 이 적절한 상황
            }
            /* 잘못된 메뉴를 주문하면 에러나게 하는 거 추가 버전
            if price[menu] == nil{
            print("잘못된 메뉴입니다.")
            return
            }
             */
        }
    }
    func ppp(){
        print("결제금액 : \(price[menu]! * cnt)")
    }
}

var oo = Order()
oo.menu = "아메리카노"
oo.cnt = 5
oo.ppp()
oo.menu = "아메리카노"
oo.cnt = 14
oo.ppp()
oo.menu = "아메리카노2"
oo.cnt = 1
oo.ppp()
