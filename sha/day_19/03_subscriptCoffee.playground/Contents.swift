import Cocoa

/*
 커피주문 클래스 구현하라
 
 메뉴 : 아메리카노:1400, 아시아노:1800, 아프리카노:2100
 
 주문 : order("아메리카노", 3)
 order("아메리카노", 2)
 
 bean["아메리카노"] --> 7000 // 각 메뉴 별 총 판매량
 */

class Coffee{
    var menu = ["아메리카노":1400, "아시아노":1800, "아프리카노":2100]
    var res = ["아메리카노":0, "아시아노":0, "아프리카노":0]
    
    func order(_ title:String,_ cnt:Int){
        print("\(title) 주문 \(cnt)잔 = \(menu[title]! * cnt)")
        res[title]! += cnt
    }
    subscript(title:String)->Void{
        print("\(title):\(menu[title]!) * \(res[title]!) => \( res[title]! * menu[title]!)")
    }
}

var bean = Coffee()
bean.order("아메리카노", 5)
bean.order("아시아노", 3)
bean.order("아프리카노", 1)

bean["아메리카노"]
