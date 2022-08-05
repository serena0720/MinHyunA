import Cocoa

/*
    직사각형 구조체를 정의하고 4개의 직사각형을 출력하라
    프로퍼티 : 가로, 세로, 넓이, 둘레
    생성 시 : 가로, 세로 입력
    출력 시 자동 계산
 */

struct Square{
    let w:Int
    let h:Int
    var area = 0
    var edge = 0
    
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

var squares = [
    Square(w: 4,h: 5),
    Square(w: 6,h: 5),
    Square(w: 8,h: 5)
]

for i in 0..<squares.count{
    squares[i].pp()
}
