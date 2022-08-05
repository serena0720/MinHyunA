import Cocoa

struct Square{
    let w:Int
    let h:Int
    var area = 0
    var edge = 0
    
    init (_ w:Int,_ h:Int){
        self.w = w
        self.h = h
        calc()
        pp()
    }
    
    mutating func calc(){
        self.area = 0
        self.edge = 0
        
        self.area = w * h
        self.edge = (w + h) * 2
        }
    mutating func pp(){
        self.calc()
        print("가로 : \(w), 세로 : \(h), 넓이 : \(area), 둘레 : \(edge)")
    }
}

Square(4,5)
Square(6,5)
Square(8,5)
