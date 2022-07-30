import Cocoa

let no = 49
var res = "소수입니다."
for i in 2..<no{
    if no % i == 0{
        res = "소수가 아닙니다."
        break
    }
//    print(i, no % i)
}

print("\(no) -> \(res)")

//숫자 2개의 최소 공배수를 구하세요
