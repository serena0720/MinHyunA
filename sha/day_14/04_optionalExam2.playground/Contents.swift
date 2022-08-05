import Cocoa

/*
 커피 주문
 
 아메리카노 2000
 아프리카노 2300
 아시아노 2500
 
 order("아메리카노", 3)
 order("아프리카노", 2)
 order("재팬노", 2) --> 잘못된 메뉴입니다.
 order("아시아노", 2)
 order("러시아노", 2) --> 잘못된 메뉴입니다.
 order("아프리카노", 1)

 출력 (전체 금액 : , 전체 갯수 : )
 */

let menu = ["아메리카노":2000, "아프리카노":2300, "아시아노":2500]
let coffee = ["아메리카노", "아프리카노", "아시아노"]

typealias Coffee = (tot:Int, count:Int)
var res:[Coffee] = []

func order(_ menu:String,_ count:Int){
    for n in menu.count{
        order.0 == menu.n
        
        
}
/*
func order(_ menu:String,_ count:inout Int)->(Int,Int){
    for i in menu{
        if i == order.0{
            var tot = price[i] * order.2
            res.append(tot,order.2)
        } else {
            print("잘못된 메뉴입니다.")
        }
    }
}
*/
order("아메리카노", 3)
order("아프리카노", 2)
order("재팬노", 2)
order("아시아노", 2)
order("러시아노", 2)
order("아프리카노", 1)

print(res)

/*
 선생님 풀이
 var tot = 0, cnt = 0

 func order(_ menu:String, _ num:Int){
     let price = ["아메리카노":2000, "아프리카노":2300, "아시아노":2500]
     
     if price[menu] == nil{
         print("잘못된 메뉴입니다.")
         return;
     }else{
         let money = price[menu]! * num
         print("\(menu) : \(num) => \(money)")
         tot += money
         cnt += num
     }
 }



 order("아메리카노", 3)
 order("아프리카노", 2)
 order("재팬노", 2)
 order("아시아노", 2)
 order("러시아노", 2)
 order("아프리카노", 1)

 print("전체금액 : \(tot),  전체 갯수 :\(cnt)")

 */
