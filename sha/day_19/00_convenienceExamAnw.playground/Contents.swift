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
    
    static var tot = 0
    static var money = 0
    
    convenience init(_ menu:String){
        self.init(menu,1)
    }
    
    init(_ menu:String,_ cnt:Int){
        let dic = ["아메리카노":2100, "아시아노":2400, "아프리카노":2550]
        let res = dic[menu]! * cnt
        print("\(menu) : \(cnt) = \(res)")
        
        Coffee.tot += cnt
        Coffee.money += res
    }
    
    static func ppp(){
        print("전체 합계 잔 : \(tot), 금액 \(money)")
    }
}

Coffee("아메리카노", 3)
Coffee("아시아노", 4)
Coffee("아프리카노", 5)
Coffee("아메리카노")

Coffee.ppp()
