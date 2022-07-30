import Cocoa
/*
var 기본금 = 300
var 직급 = 1.0
var 월급 = 기본금 * 직급


switch 기본금 {
case 500...:
    print("부장 월급:\(기본금*Int(1.5))")
case 300..<500:
    print("과장 월급:\(기본금*Int(1.3))")
case 200..<300:
    print("대리 월급:\(기본금*Int(1.2))")
case 100..<200:
    print("사원 월급:\(기본금*Int(1.1))")
default:
    print("기본급입니다.")
}
*/

/*
 부장 : 50%, 과장 : 30%, 대라 : 20%, 사원 : 10%
 월급 : 300 + 300*30%
 보너스 : 0.5 / 0.3 / 0.2 / 0.1
 직급으로 가져오면 됨
 */
// 선생님 설명

let basic = 300
let pos = "과장"
let bonus:Double

switch pos{
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

print("기본급:\(basic), 직급:\(pos), 월급:\(money)")
