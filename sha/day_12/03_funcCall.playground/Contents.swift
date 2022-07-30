import Cocoa

func fn_1(_ c:Int)->Int{
    var res3 = 0
    print("fn_1() 시작:\(c), \(res3)")
    let rr = fn_2(c)
    res3 = c * 1000 + rr
    fn_2(5)
    print("fn_1() 끝:\(c), \(res3)")
    return res3
}

func fn_2(_ b:Int)->Int{
    var res2 = 0
    print("\tfn_2() 시작:\(b), \(res2)")
    let rr = fn_3(b)
    res2 = b * 100 + rr
    print("\tfn_2() 끝:\(b), \(res2)")
    return res2
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
