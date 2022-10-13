import Cocoa

var arr1 = [3,7,15,47,12,32,8]

var res1 = [Int]()

func mul5(_ no:Int)->Int{
    return no * 5
}

for i in arr1{
    //res1.append(i*5)
    res1.append(mul5(i))
}

print("res1:\(res1)")

//map으로 축약

/*// 있다고 가정
 var arr1 = [3,7,15,47,12,32,8]
 
 var res1 = [Int]()

 func mul5(_ no:Int)->Int{
     return no * 5
 */
 
var res2 = arr1.map(mul5)
print("res2:\(res2)")

var res3 = arr1.map({(a:Int)->Int in
    return a * 5
})
print("res3:\(res3)")

var res4 = arr1.map{$0 * 5} // 계속 0 번쨰이기 때문에 매개변수 0번째를 호출
print("res4:\(res4)")

var res5 = arr1.map{"나는무너\($0)"}
print("res5:\(res5)")
