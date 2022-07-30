import Cocoa

typealias Stud = (kind:String , name:String, tot:Int, res:Int)

func general(_ name:String, _ jum:Int...)->Stud{
   var tot = 0
    for i in jum{
        tot += i
    }
    return ("일 반", name, tot, tot/jum.count)
}

func spec(_ name:String, _ kor:Int, _ eng:Int,  _ art:Int)->Stud{
    let tot = kor + eng + art
    let res = Double(kor) * 0.2 + Double(eng) * 0.1  + Double(art) * 0.7
    return ("예체능", name, tot, Int(res))
}

//var st = general("현빈", 97,59,33)
//print(st)
//st = spec("원빈", 97,59,33)
//print(st)

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



typealias Shape = (kind:String, area:Int, border:Int)

func rectangle(_ w:Int , _ h:Int)->Shape{
    
    return ("직사각형", w * h , (w + h) * 2)
}


func triangle(_ w:Int , _ h:Int, _ a:Int)->Shape{
    
    return ("직각사각형", w * h / 2 , w + h + a)
}

func circle(_ r:Double)->Shape{
    let PI = 3.14
    return ("원", Int(r * r * PI) , Int(r * 2 * PI))
}
//var sh = rectangle(5, 6)
//print(sh)
let shapes = [
    rectangle(5, 6),
    triangle(5,6,10),
    circle(5)
]

for sh in shapes{
    print(sh)
}
