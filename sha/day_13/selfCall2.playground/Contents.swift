import Cocoa

/* 짝수끼리의 합
func fn(_ no:Int)->Int{
    var res = no
    
    if no % 2 == 0 && no > 0{
        res += fn(no-2)
    }else{
        
    }
    return res
}

var rr = 0
rr = fn(9)
print("\(rr)")
*/

//선생님 풀이
var pp = ""
func fn(_ no:Int)->Int{
    var res = no
    let myPP = pp
    pp += "\t"
    print(myPP+"fn() 시작 \(no) , \(res)")
    
    if no > 0 { //조건
        res += fn(no-1) //증감
    }
    print(myPP+"fn() 끝 \(no) , \(res)")
    return res
}
var rr = 0
print("메인 시작 :\(rr)")
rr = fn(3)  //초기값 - 3
print("메인 끝 :\(rr)")

print("---------------------------------")
pp = ""
func even(_ no:Int)->Int{
    var res = 0
    
    if no % 2 == 0{
        res = no
    }
    
    if no > 0 { //조건
        res += even(no-1) //증감
    }
    return res
}

rr = 0
rr = even(9)
print("짝수 :\(rr)")
