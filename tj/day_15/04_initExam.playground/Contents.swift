import Cocoa

struct Stud{
    let name:String
    let jum:[Int]
    var tot = 0, avg = 0
    
    init(_ name:String, _ jum:Int...){
        self.name = name
        self.jum = jum
        calc()
        ppp()
    }
    mutating func calc(){
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

//var st = Stud("장건",7,9,1)
//st.ppp()
Stud("장동건",77,79,71)
Stud("장서건",67,69,61)
Stud("장남건",97,99,91)
Stud("장중건",57,59,51)
Stud("북두신건",87,89,81)
