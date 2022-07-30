import Cocoa

func fn_1(_ c:Int)->Int{
    var res = 0
    print("fn_1() 시작:\(c), \(res)")
    let rr = fn_2(c)
    res = c * 1000 + rr
    print("fn_1() 끝:\(c), \(res)")
    return res
}
func fn_2(_ b:Int)->Int{
    var res = 0
    print("\tfn_2() 시작:\(b), \(res)")
    let rr = fn_3(b)
    res = b * 100 + rr
    print("\tfn_2() 끝:\(b), \(res)")
    return res
}
func fn_3(_ a:Int)->Int{
    var res = 0
    print("\t\tfn_3() 시작:\(a), \(res)")
    res = a * 10
    print("\t\tfn_3() 끝:\(a), \(res)")
    return res
}

var rr = fn_1(7)
print("메인 : \(rr)")
