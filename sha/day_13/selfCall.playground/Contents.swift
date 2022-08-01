import Cocoa

/* // return 값이 없는 버전
var pp = "" // 만약 이 안에 값을 넣으면, myPP의 처음 값에 반영이 될 수 있다.
func fn(_ no:Int){
    
    let myPP = pp
    pp += "\t" // 바로 적용되는 것이 아니라 추후 반영. 박스 안에 박스를 그려서 생각.
    print(myPP+"fn() 시작 \(no)") // myPP값이기 때문에 추후 반양, \(myPP)면 합해진 값으로 반영.
    
    // fn()  --> 초기값, 조건, 증감이 없으면 무한반복에 빠짐.
    if no>0{ // 조건
    fn(no-1) // 증감
    }
    
    print(myPP+"fn() 끝 \(no)") // 그안의 함수의 값을 다지우고 return 값으로 돌아감. 작업이 끝나고 순차적으로 돌아감. 지역변수는 서로 영향을 미치지 못하고, 전역변수만 영향을 받는다. 도식화해서 그려보기.
}

fn(3)  // 초기값 --> 3
*/

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
    return res // res값이 fn나들어가는 값으로 들어가면서 그 안의 함수가 사라짐.
}

var rr = 0 // 시작
print("메인 시작 : \(rr)")
rr = fn(3)  //초기값 - 3
print("메인 끝 : \(rr)") // 0...n 누적 합을 구하는 함수임.
