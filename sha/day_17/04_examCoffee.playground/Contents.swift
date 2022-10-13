import Cocoa

/*
 커피주문 클래스 구현하기
 
 커피가격
 아메리카노:2200, 아시아노:2400, 아프리카노:2500
 
 갯수 1~9잔만 가능
 
 결제금액 : 커피가격 * 갯수(get_only)
 */

class order{
    let menu:String
    var num:Int
    
    init(_ menu:String,_ num:Int){
        self.menu = menu
        self.num = num
    }
    let price = ["아메리카노":2200, "아시아노":2400, "아프리카노":2500]
    var num: Int{
        didSet{
            if price[menu] == nil{
            print("잘못된 메뉴입니다.")
            return
            }
            if num < 1 || 9 < num{
                print("에러")
                return
            }
        }
        get{
            var tot = 0 , cnt = 0
            let money = price[menu]! * num
            print("\(menu) : \(num) => \(money)")
            tot += money
            cnt += num
        }
    }
    
    func ppp()->String{
        print("결제금액 : \(price * num)")
    }
}

var or = order("아메리카노", 5)
or.ppp()
