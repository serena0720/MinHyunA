import Cocoa

/*
 (name:"정우성", jum:39,27,91, fn:?
 --> 이름, 총점, 결과(평균)
 (name:"정좌성", jum:39,27,91, fn:?
 --> 이름, 총점, 결과(국어:10%, 영어:5%, 예체능:85%)
 */
func exam(name:String, jum:Int..., fn:Int)->(String,Int,Int){
    var tot = 0
    for i in jum{
        tot += i
    }
    let avg = tot/jum.count
    
    return (name, tot, avg)
}

var rr = exam(name: "정우성", jum:39,27,91,fn:0)
print(rr)

rr = exam(name:"정좌성", jum:39,27,91, fn:{
    if name  == "정좌성" {
        tot = $0 * 0.1 + $1 * 0.05 + $2 * 0.85
    }
    return (name, tot, avg)
})

print(rr)
