import Cocoa

class Stud{
    
    let name:String
    let jum:[Int]
    var tot:Int
    var avg:Int
    
    // 점수가 없는 경우, 즉 이름만 있는 경우 모든 점수를 0점 처리
    convenience init(_ name:String){
        self.init(name,0,0,0)
    }
    
    init(_ name:String,_ jum:Int...){
        self.name = name
        self.jum = jum
        
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
    Stud("정우성",77,79,71),
    Stud("정좌성"),
    Stud("정중성",97,99,91),
    Stud("정남성",57,59,51),
    Stud("정북성")
]

for st in studs{
    st.ppp()
}
	
