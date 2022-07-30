import Cocoa


func fn_1(){  //함수의 정의
    print("fn_1() 실행 :  param X, ret X")
}

func fn_2(aa:Int, bb:String){
    print("fn_2() aa :\(aa), bb:\(bb), ret X")
    return //명시적으로 넣어도 상관없음
}

func fn_3()->Int{
    print("fn_3() param X, ret 1234")
    return 1234
}

func fn_4(qwer:Bool, bb:String, cc:Double)->String{
    print("fn_4() qwer :\(qwer), bb:\(bb), cc:\(cc) ret: 장수풍뎅이")
    return "장수풍뎅이"
}

var r1 = fn_1()  //함수 호출
print("r1:\(r1)")
var r2 = fn_2(aa:100, bb:"나는무너")  //매개변수를 정의된 형태와 일치 시킨다
print("r2:\(r2)")
var r3 = fn_3()  //리턴 값을 변수에 대입
print("r3:\(r3)")
var r4 = fn_4(qwer:false, bb:"나는상어", cc:987.654)  //매개변수를 정의된 형태와 일치 시킨다
print("r4:\(r4)")
