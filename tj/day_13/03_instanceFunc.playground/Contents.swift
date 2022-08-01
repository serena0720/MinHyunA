import Cocoa
import Foundation

func fn_1(a:Int, b:String)->Double{
    print("fn_1() 실행 : \(a), \(b)")
    return 123.456
}

var rr = fn_1(a:10,b:"나는무너")
print("rr:\(rr)")

var fn_2 = fn_1 //함수를 변수에 대입 --> 변수명이 함수명


rr = fn_2( 20 , "나는상어")
print("rr:\(rr)")

var fn_3:(Int,String)->Double = fn_1
rr = fn_3( 30 , "나는인어")
print("rr:\(rr)")


//함수정의를 익명으로 처리
rr = {(a:Int, b:String)->Double in
    print("이름 없이() 실행 : \(a), \(b)")
    return 123.456
}(40,"나는공룡")
print("rr:\(rr)")

({
    ()->() in
    print("익명함수 실행 1() ")
})()


var fn_4 = {
    ()->() in
    print("익명함수 실행 4() ")
}

fn_4()



func fnParam(ff:()->()){
    print("fnParam 시작---------")
    ff()
    print("fnParam 끝---------")
}

func fn_5(){
    print("fn_5 실행 () ")
}
func fn_6(){
    print("fn_6 실행 () ")
}
fnParam(ff: fn_5)
fnParam(ff: fn_6)
fnParam(ff: {
    ()->() in
    print("매개변수로 정의 실행 1() ")
})

fnParam(ff: {
    
    print("매개변수로 정의 실행 2() ")
})
func fnParam2(ff:(String,Int)->Bool){
    print("fnParam2 시작---------")
    var res = ff("아기상어",135)
    print("fnParam2 끝 : \(res)---------")
}

func fn_7(aa:String, bb:Int)->Bool{
    print("fn_7 실행 :\(aa), \(bb) ")
    return true
}

fnParam2(ff: fn_7)
fnParam2(ff: {
    (cc:String, dd:Int)->Bool in
    print("매개변수 익명 정의 실행 3:\(cc), \(dd) ")
    return true
})

fnParam2(ff:{
    cc, dd in
    print("매개변수 익명 정의 실행 4:\(cc), \(dd) ")
    return true
})
fnParam2(ff:{
    
    print("매개변수 익명 정의 실행 5:\($0), \($1) ")
    return false
})
