import Cocoa

/*
 부모클래스 : 도형
 이름, 넓이, 둘레
 
 자식클래스 : 원, 직사각형
 */
class Shape{
    var name = ""
    var area = 0, border = 0
    
    func ppp(){
        print("\(name) : \(area), \(border)")
    }
}

class Circle:Shape{
    init(_ r:Double){
        super.init()
        name = "원"
        let PI = 3.14
        area = Int(PI * r * r)
        border = Int(PI * r * 2)
    }
}

class Rec:Shape{
    init(_ w:Int,_ h : Int){
        super.init()
        name = "직사각형"
 
        area = w * h
        border = (w + h) * 2
    }
}

