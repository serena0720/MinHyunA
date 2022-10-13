import Cocoa

class Stud{
    let name:String
    var kind = "부   모"
    let jum:[Int]
    var tot = 0, avg = 0
    
    init(_ name:String,_ jum:Int...){
        self.name = name
        self.jum = jum
    }
    func calc(){}
    
    func ppp(){
        calc()
        print("\(kind)\t\(name)\t\(jum)\t\(tot)\t\(avg)")
    }
}

class General:Stud{
    override func calc(){
        kind = "일   반"
        tot = 0
        
        for i in jum{
            tot += i
        }
        avg = tot / jum.count
    }
}

class Art:Stud{
    let rate = [0.2, 0.1, 0.7]
    
    override func calc(){
        kind = "예체능"
        tot = 0
        avg = 0
        
        for i in 0..<rate.count{
            tot += jum[i]
            avg += Int(Double(jum[i]) * rate[i])
        }
    }
}

let studs:[Stud] = [
    Stud("정우성",78,79,34),
    General("정좌성",78,79,34),
    Art("정좌성",78,79,34)
]

for st in studs{
    st.ppp()
}
