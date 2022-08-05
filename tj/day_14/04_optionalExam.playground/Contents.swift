import Cocoa

var kor = ["정우성":78,"정좌성":58,"정남성":98,"정중성":88]
var eng = ["정우성":72,"정남성":92,"정중성":82,"북두신성":62]
var mat = ["정우성":74,"정좌성":54,"정남성":94,"북두신성":64]

let names = ["정우성","정좌성","정남성","정중성","북두신성"]
typealias Stud = (name:String, tot:Int, avg:Int)
var res:[Stud] = []

for nn in names{
    var tot = (kor[nn] ?? 0) + (eng[nn] ?? 0) + (mat[nn] ?? 0)
    res.append((nn, tot, tot/3 ))
}

for st in res{
    print(st)
}




/*

 커피 주문을 구현하세요

 아메리카노 2000, 아프리카노 2300,  아시아노 2500

 order("아메리카노", 3)
 order("아프리카노", 2)
 order("재팬노", 2). -- > 잘못된 메뉴입니다.
 order("아시아노", 2)
 order("러시아노", 2). -- > 잘못된 메뉴입니다.
 order("아프리카노", 1)
 
전체금액 :, 전체 갯수 :

 */

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




 
