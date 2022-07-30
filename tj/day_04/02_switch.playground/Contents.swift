import Cocoa

switch 60 {
    
case 10:
    print("10 입니다")
case 100:
    print("100 입니다")
case 80:
    print("80 입니다1")
case 80:
    print("80 입니다2")
case 80:
    print("80 입니다3")
case 60:
    print("60 입니다")
    fallthrough
case 50:
    print("50 입니다")
case 70:
    print("70 입니다")
default:
    print("기본값 입니다.")
    
}

print("----------------------")

switch 20 {
case 10,12,14,16,18: // , : or 의 의미
    print("짝수입니다.")
case 11,11,13,15,17,19:
    print("홀수입니다.")
    
default:
    print("기본값 입니다.")
}
print("----------------------")
print(10...20) // 10 <= x <= 20
print(10..<20) // 10 <= x < 20
//print(10<..20) // 에러
print(10...) // 10 <= x
//print(10<..) // 에러
print(...20) // x <= 20
print(..<20) // x < 20
print("----------------------")
switch 20 {
case 50...60:
    print("50...60 입니다")
case 70..<80:
    print("70..<80 입니다")
case 100...:
    print("100... 입니다")
case ...10:
    print("...10 입니다")
case ..<20:
    print("..<20 입니다")
default:
    print("기본값 입니다.")
}

print("----------------------")

let jj = 72
switch jj {
    
case 70..<80 where jj % 3 == 0:
    print("미 , 3 의 배수")
case 70..<80 where jj % 2 == 0:
    print("미 , 2 의 배수")
case 70..<80:
    print("미")
    
case 60..<70:
    print("양")
default:
    print("가 입니다.")
}

print("------------------")

let basic = 300
let pos = "과장"
let bonus:Double

switch pos {
case "부장":
    bonus = 0.5
case "과장":
    bonus = 0.3
case "대리":
    bonus = 0.2
case "사원":
    bonus = 0.1
    
default:
    bonus = 0
}

let money = basic + Int(Double(basic) * bonus)

print("기본급:\(basic), 직급:\(pos), 월급 : \(money)")

