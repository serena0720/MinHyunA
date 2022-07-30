import Cocoa

func rectangle(w:Int, h:Int){
    let area = w * h
    let border = (w + h) * 2
    print("직사각형의 넓이 : \(area) , 둘레 : \(border)")
}


rectangle(w: 5, h: 6)
rectangle(w: 12, h: 10)
rectangle(w: 9, h: 3)


func thrPlus(no1:Int,no2:Int,no3:Int)->Int{
    
    return no1 + no2 + no3
}


print( thrPlus(no1:1,no2:2,no3:3) )
print( thrPlus(no1:15,no2:7,no3:9) )
