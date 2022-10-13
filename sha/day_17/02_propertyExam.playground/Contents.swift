import Cocoa

class Stud{
    let name:String
    let jum:[Int]
    
    init(_ name:String,_ jum:Int...){
        self.name = name
        self.jum = jum
    }
    var tot:Int{
        get{
            var res = 0
            for i in jum{
                res += i
            }
            return res
        }
    }
    
    var avg:Int{
        get{
            return tot/jum.count
        }
    }
    
    func ppp()->String{
        return "\(name)\t\(jum)\t\(tot)\t\(avg)"
    }
    lazy var ttt = ppp()
}

var st = Stud("장동건",87,79,54)
print(st.ttt)


// 선생님 풀이
/*
 직사각형 클래스를 정의하고 출력
 var s1 = Shape(5,6)
 //넓이와 둘레는 직접 입력 불가
 //출력 시 자동 연산
 
 print(s1.www) // 직사각형의 넓이 : 30, 둘레 : 22
 */

class Shape{
    let w:Int, h:Int
    
    init(_ w:Int,_ h:Int){
        self.w = w
        self.h = h
    }
    var area:Int{
        get{
            return w * h
        }
    }
    var border:Int{
        get{
            return (w + h) * 2
        }
    }
    lazy var www:String = { // 익명 함수 closure를 사용 하는 방법
        return "직사각형의 넓이 : \(area), 둘레 : \(border)"
    }()
/*
    func ppp()->String{
        return "직사각형의 넓이 : \(area), 둘레 : \(border)"
    }
 */
}

var s1 = Shape(5,6)
print(s1.www)

