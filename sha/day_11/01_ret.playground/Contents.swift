import Cocoa

typealias Stud = (kind: String, name: String, tot: Int, res: Int) //튜플 타입 정의
func general(_ name:String, _ jum:Int... )->Stud{ // name을 닫고, return을 닫음.
    var tot = 0
    for i in jum{
        tot += i
    }
    return("일반", name, tot, tot/jum.count)
}

func spec(_ name:String, _ kor:Int, _ eng:Int,  _ art:Int)->Stud{ // _ 는 추후 nabel을 생략해 달라.
    let tot = kor + eng + art
    let res = Double(kor) * 0.2 + Double(eng) * 0.1  + Double(art) * 0.7
    return ("예체능", name, tot, Int(res))
}

/*
var st = general("현빈", 77 , 89 , 63)
print(st)
st = spec("원빈", 97 , 59 , 33) // st라는 묶음에 spec의 값을 추가
print(st)
*/

let studs = [
    general("현빈", 97,59,33),
    spec("원빈", 97,59,33),
    general("투빈", 37,59,93),
    general("장희빈", 57,59,53),
    spec("젤리빈", 37,59,93),
    spec("커피빈", 57,59,53)
]

for st in studs{
    print(st)
}


/*
 도형의 종류
 이름 넓이 둘레
 원
 직사각형
 직각삼각형
 */

/*
typealias figure = (kind:String, half:Int, pi:Int, wid:Int, len:Int, high:Int, area:Int, cir:Int)
var pi = 3.14

func sqar(_ kind:String, _ wid:Int... ,_ len:Int...) {
    let area = wid*len
    return("원",kind, area)}
*/

typealias Shape = (kind:String, area:Int, border:Int)

func rectangle(_ w:Int,_ h:Int)->Shape{  // 왼쪽 내용을 리턴받는다
    return ("직사각형", w*h, (w+h)*2)
}

var sh = rectangle(5, 6)

func triangle(_ w:Int,_ h:Int,_ a:Int)->Shape{  // 왼쪽 내용을 리턴받는다
    return ("직각사각형", w*h/2, w+h+a)
}

func circle(_ r:Double)->Shape{
    let pi = 3.14
    return("원", Int(r*r*pi), Int(r*2*pi)) // 튜플의 기본 형태가 Int이기 때문에 들어오는 숫자가 Double인 경우 Int로 결과를 바꿔줘야함
}

let shapes = [
    rectangle(5,6),
    triangle(5,6,10),
    circle(5)
]

for sh in shapes{
    print(sh)
}
