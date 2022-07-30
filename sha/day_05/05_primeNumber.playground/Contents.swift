import Cocoa

let no = 49
var res = "소수입니다." // res 는 결과
 for i in 2..<no{
    if no % i == 0{
        res = "소수가 아닙니다."
        break
    }
 //   print(i, no % i)  // 확인용
}
print("\(no) -> \(res)")
