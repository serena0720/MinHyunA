import Cocoa

/*
 도형 클래스를 구형
 클래스명 : Shape
 입력 및 계산 :
 원 : Shape(5) -- 오버로딩
 직사각형 : Shape(5,6) -- 오버로딩
 
 출력메소드 : ppp()
 도형명, 넓이, 둘레
 */

class Shape{
    let name:String
    var area:Int
    var border:Int
    var r = 0, w = 0, h = 0
    var pi = 3.14
    
    init(_ name:String,_ area:Int,_ border:Int){
        self.name = name
        self.area = area
        self.border = border
        
        calc(<#Int#>)
    }
    func calc(_ r:Int){
        let name = "원"
        area = r * r * Int(pi)
        border = r * 2 * Int(pi)
    }
    func calc(_ w:Int,_ h:Int){
        let name = "직사각형"
        area = w * h
        border = 2 * (w + h)
    }
    func ppp(){
        print("도형명 : \(name), 넓이 : \(area), 둘레 : \(border)")
    }
}

Shape(5)
Shape(5,6)
