import Cocoa

/*
 시험을 볼 때마다 기준이 다르게 처리.
 */
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
