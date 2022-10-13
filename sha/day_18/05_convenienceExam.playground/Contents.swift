import Cocoa

/*
 커피 주문하는 클래스를 생성하여 출력
 
 아메리카노:2100, 아시아노:2400, 아프리카노 :2550
 
 Coffee("아메리카노") --> 1잔
 Coffee("아메리카노", 3) --> 3잔
 
 출력 : 각 주문 내용, 잔수, 금액
 
 최종 : 전체 합계 잔, 금액
 */

class Coffee{
    let price = ["아메리카노":2100, "아시아노":2400, "아프리카노":2550]
    let menu:String
    let cnt:Int
    var tot:Int
    
    convenience init(_ menu:String) {
        self.init(menu,1)
    }
    
    init(_ menu:String,_ cnt:Int){
        self.menu = menu
        self.cnt = cnt
        
        tot = 0
        tot += (price[menu])! * cnt
    }
        
        func ppp(){
            print("주문 메뉴 : \(menu), \(cnt)잔, 금액 : \(tot)")
        }
    }


let coffeeOrder = [
    Coffee("아메리카노"),
    Coffee("아시아노", 4)
]

for cf in coffeeOrder{
    cf.ppp()
}
