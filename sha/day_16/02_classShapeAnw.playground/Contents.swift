import Cocoa

class Stud{
    let name:String
    let jum:[Int]
    var tot = 0, avg = 0
    
    init(_ name:String, _ jum:Int...){
        self.name = name
        self.jum = jum
        
        calc()
    }
    
    func calc(){
        tot = 0
        for i in jum{
            tot += i
        }
        avg = tot / jum.count
    }
    
    func ppp(){
        print("\(name)\t\(jum)\t\(tot)\t\(avg)")
    }
}

let studs = [
    Stud("원  빈",77,78,71),
    Stud("현  빈",57,58,51),
    Stud("투  빈",97,98,91),
    Stud("장희빈",67,68,61),
    Stud("젤리빈",87,88,81)
]

for st in studs{
    st.ppp()
}


class Shape{
    let name:String
    var area = 0, border = 0
    
    init(_ r:Double){
        let PI = 3.14
        name = "원"
        area = Int(r * r * PI)
        border = Int(2 * r * PI)
    }
    
    init(_ w:Int, _ h:Int){
        
        name = "직사각형"
        area = w * h
        border = (w + h) * 2
    }
    
    func ppp(){
        print("\(name) : \(area) , \(border)")
    }
    
}
