import Cocoa

func exam2(name:String, jum:Int... , fn:([Int])->(Int,Int)){
    let rr = fn(jum)
    print("\(name), \(rr.0), \(rr.1)")
}

exam2(name:"정우성", jum:39,27,91, fn: {
    var tot = 0
    for i in $0{
        tot += i
    }
    return(tot, tot/$0.count)
})

exam2(name:"정좌성", jum:39,27,91, fn: {
    var tot = 0
    var res = 0.0
    let rate = [0.1, 0.05, 0.85]
    for i in 0..<$0.count{
        tot += $0[i]
        res += Double($0[i])*rate[i]
    }
    return(tot, Int(res))
})
