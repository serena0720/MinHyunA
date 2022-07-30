import Cocoa

func fn_1(){
    print("fn_1() 실행 1")
    return;  //최초 실행 되는 return 으로 함수 탈출 --> 이후 구문은 실행되지 않는다
    print("fn_1() 실행 2")
    return;
    print("fn_1() 실행 3")
    return;
}

fn_1()

func fn_2()->Void{  // Void 리턴 값이 없다는 의미
    print("fn_2() 실행")
    return
   
}

var r2 = fn_2()
print("r2:\(r2)")

func fn_3()->(){  // () 리턴 값이 없다는 의미
    print("fn_3() 실행")
    return
   
}

var r3 = fn_3()
print("r3:\(r3)")


func fn_4()->Int{
    print("fn_4() 실행")
    return 100
   
}

var r4 = fn_4()
print("r4:\(r4)")


//func fn_5()->Int, Int{
//    print("fn_5() 실행")
//    return 100, 200
//
//}
//
//var r5 = fn_5()
//print("r5:\(r5)")


func fn_6()->[Int]{
    print("fn_6() 실행")
    return [100, 200]

}

var r6 = fn_6()
print("r6:\(r6)")


func fn_7()->(String, Int){
    print("fn_7() 실행")
    return ("조인성",39)

}

var r7 = fn_7()
print("r7:\(r7)")

var tt:String
var ii:Int
(tt, ii) = fn_7()
print("tt:\(tt) , ii:\(ii)")

