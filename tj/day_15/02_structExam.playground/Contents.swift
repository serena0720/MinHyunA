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
        self.avg = tot/jum.count
    }
    
    mutating func ppp(){
        self.calc()
        print("\(name)\t\(jum)\t\(tot)\t\(avg)")
    }
}


var studs = [
    Stud(name:"정우성",jum:[87,89,82]),
    Stud(name:"정좌성",jum:[67,69,62]),
    Stud(name:"정중성",jum:[97,99,92]),
    Stud(name:"정남성",jum:[57,59,52]),
    Stud(name:"정북성",jum:[77,79,72])
    
]
//st.calc()
//for st in studs{
//    st.ppp()
//}

for i in 0..<studs.count{
    studs[i].ppp()
}


/*
    직사각형 구조체를 정의하고 4개의 직사각형을 출력하세요
 
    프로퍼티 : 가로, 세로, 넓이, 둘레
    생성시 : 가로, 세로 입력
    출력시 자동 계산
 
 */


struct Rectangle{
    let w:Int
    let h:Int
    var area = 0, border = 0
    
    mutating func calc(){
        self.area = w * h
        self.border = (w + h) * 2
    }
    
    mutating func ppp(){
        self.calc()
        print("\(w), \(h) \t=> \(area),\(border)")
    }
}


var rrr = [
    Rectangle(w:5,h:6),
    Rectangle(w:7,h:10),
    Rectangle(w:20,h:15),
    Rectangle(w:30,h:8),
    Rectangle(w:3,h:4)
]


for i in 0..<rrr.count{
    rrr[i].ppp()
}


