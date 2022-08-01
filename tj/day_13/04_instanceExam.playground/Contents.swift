import Cocoa

func exam(name:String, jum:Int... , fn:(Int)->String)->(String,Int,String){
    var tot = 0
    for i in jum{
        tot += i
    }
    let avg = tot/jum.count
    
    return (name, avg, fn(avg))
}


var rr = exam(name:"한가인",jum:78,89,91, fn:{
    if $0 >= 80 {
        return "합격"
    } else{
        return "불합격"
    }
})
print(rr)

rr = exam(name:"두가인",jum:78,89,91, fn:{
    if $0 % 2 == 1 {
        return "통과"
    } else{
        return "대기"
    }
})
print(rr)



/*
 
 exam2(name:"정우성", jum:39,27,91, fn:?)
 --> 이름, 총점, 결과(평균)
 
 
 exam2(name:"정좌성", jum:39,27,91, fn:?)
 --> 이름, 총점, 결과(국어:10%, 영어:5%, 예체능:85%)
 */


func exam2(name:String, jum:Int..., fn:([Int])->(Int,Int) ){
    let rr = fn(jum)
    print("\(name), \(rr.0) , \(rr.1)")
}
exam2(name:"정우성", jum:39,27,91, fn:{
    var tot = 0
    for i in $0{
        tot += i
    }
    return (tot, tot/$0.count)
})


exam2(name:"정좌성", jum:39,27,91, fn:{
    var tot = 0
    var res = 0.0
    let rate = [0.1, 0.05, 0.85]
    for i in 0..<$0.count{
        tot += $0[i]
        res += Double($0[i]) * rate[i]
    
    }
    return (tot, Int(res))
})

