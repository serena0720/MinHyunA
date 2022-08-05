import Cocoa

struct Stud{
    let name:String
    let jum:[Int]
    var tot = 0
    var avg = 0
    
    mutating func calc(){
        self.tot = 0
        
        for i in jum{
            tot += i
        }
        self.avg = tot / jum.count
    }
    mutating func ppp(){
        self.calc() //같은 함수 안에 묶여있으면 지칭해야함.
        print("\(name)\t\(jum)\t\(tot)\t\(avg)")
    }
}

var studs = [
    Stud(name:"정우성",jum: [87,89,82]),
    Stud(name:"정좌성",jum: [67,69,62]),
    Stud(name:"정중성",jum: [97,99,92]),
    Stud(name:"정남성",jum: [57,59,52]),
    Stud(name:"정북성",jum: [77,79,72])]
//st.calc() // 함수 안으로 넣어도 된다.
//st.ppp()
/*
 상수이기 때문에 안됨.
 for st in studs{
    st.ppp()
}
 */

for i in 0..<studs.count{
    studs[i].ppp()
}


