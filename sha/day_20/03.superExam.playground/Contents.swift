import Cocoa

class Stud{
    var kind = ""
    var name = ""
    
    var tot = 0, avg = 0
    func ppp() {
        print("\(kind)\t\t\(name)\t\(tot)\t\(avg)")
    }
}

class Gen:Stud{
    init(_ name:String,_ kor:Int,_ eng:Int,_ mat:Int){
        super.init() // 부모 생성자
        
        kind = "일 반"
        self.name = name
        
        tot = kor + eng + mat
        avg = tot/3
    }
}

class Art:Stud{
    init(_ name:String,_ kor:Double,_ eng:Double,_ art:Double){
        super.init() // 부모 생성자
        
        kind = "일 반"
        self.name = name
        
        tot = Int(kor + eng + art)
        avg = Int(kor * 0.2 + eng * 0.1 + art * 0.7)
    }
}

var st1 = Gen("정우성", 67,68,62)
var st2 = Gen("정좌성", 97,68,32)
var st3 = Gen("정나성", 37,68,92)
var st4 = Art("정중성", 67,68,62)
var st5 = Art("정북성", 97,68,32)
var st6 = Art("조인성", 37,68,92)

st1.ppp()
st2.ppp()
st3.ppp()
st4.ppp()
st5.ppp()
st6.ppp()
