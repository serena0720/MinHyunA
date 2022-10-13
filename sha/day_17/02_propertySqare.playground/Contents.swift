import Cocoa

/*
 직사각형 클래스를 정의하고 출력
 var s1 = Shape(5,6)
 //넓이와 둘레는 직접 입력 불가
 //출력 시 자동 연산
 
 print(s1.www) // 직사각형의 넓이 : 30, 둘레 : 22
 */

class Shape{
    let w:Int
    let h:Int
    
    init(_ w:Int,_ h:Int){
        self.w = w
        self.h = h
    }
    
    var area:Int{
        get{
            return w * h
        }
    }
    
    var border:Int{
        get{
            return (w + h) * 2
        }
    }
    
    func ppp()->String{
        return "직사각형의 넓이 : \(area), 둘레 : \(border)"
    }
    lazy var ttt = ppp()
}

var sh = Shape(5,6)
print(sh.ttt)
