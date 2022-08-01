import Cocoa
import os
import Foundation

//01
func fn_1(a:Int, b:String)->Double{
    print("fn_1() 실행 : \(a), \(b)")
    return 123.456
}
var rr = fn_1(a:10, b:"나는무너")  // 함수의 실행값
print("rr:\(rr)") // 함수의 리턴 값

//02
var fn_2 = fn_1 // ()를 치지 않는다. 함수를 변수에 대입 --> 변수명이 함수명
// 자료형을 어떻게 할것인가?
rr = fn_2(20, "나는상어")  // 함수의 실행값
print("rr:\(rr)") // 함수의 리턴 값

//03
var fn_3:(Int,String)->Double = fn_1
rr = fn_3(30, "나는인어")  // 함수의 실행값
print("rr:\(rr)") // 함수의 리턴 값

//04. 함수의 정의를 익명으로 처리. 객체이기 때문에 괜찮다.
rr = {(a:Int, b:String)->Double in
print("이름없이() 실행 : \(a), \(b)")
return 123.456
}(40, "나는공룡") // 함수의 실행값
print("rr:\(rr)") // 함수의 리턴 값

//05 매개변수. 리턴값도 없는 애.
({
    ()->() in
    print("익명함수 실행 1()")
})() // ()는 익명함수가 혼자 있을 떄 붙여줘야함.
var fn_4 = {
    ()->() in
    print("익명함수 실행 4()")
}

fn_4()


//06.
func fnParam(ff:()->()){ //ff:()->() : 매개변수도 리턴도 없는 함수
    print("fnParam 시작-----------")
    ff()
    print("fnParam 끝-----------")
}

func fn_5(){
    print("fn_5 실행 ()")
}

func fn_6(){
    print("fn_6 실행 ()")
}

fnParam(ff: fn_5) //fn_5를 매개변수로 받아서 실행
fnParam(ff: fn_6) // 함수 안에서 실행할 함수를 매개변수로 넣음. 이런 식을 원하는 것으로 변경도 가능.
fnParam(ff: { // 원하는 함수가 없는 경우 만들어서 사용 가능.
    ()->() in
    print("매개변수로 함수를 정희하여 실행1()")
}) // () 앚자멀가
// 이것을 축약 가능. closure : 익명함수
fnParam(ff: {
    // 자료형이 없는 경우 ()->()를 생략. return이 없는 경우 in도 생략
    // *func fnParam(ff:()->())*로 이미 앞에 정의 되어 있음.
    print("매개변수로 함수를 정희하여 실행2()")
})



//07. closure의 형태
func fnParam2(ff:(String,Int)->(Bool)){
    print("fnParam2 시작-----------")
    var res = ff("아기상어",135)
    print("fnParam2 끝 : \(res)-----------")
}

func fn_7(aa:String, bb:Int)->Bool{
    print("fn_7 실행 : \(aa), \(bb)")
    return true
}

fnParam2(ff: fn_7)
fnParam2(ff: {
    (cc:String, dd:Int)->Bool in
    print("매개변수 익명 정의 실행3 :\(cc), \(dd)")
    return true
})
//이를 축약하기
fnParam2(ff:{
    cc, dd in // 자료형 생략 가능
    print("매개변수 익명 정의 실행4 :\(cc), \(dd)")
    return true // return이 정해져 있기 때문에 ->bool 생략 가능.
})
//이를 축약하기
fnParam2(ff:{
    // 생략
    print("매개변수 익명 정의 실행4 :\($0), \($1)") // 몇번째 parameter 인지로 지시해야함.
    return true
})
