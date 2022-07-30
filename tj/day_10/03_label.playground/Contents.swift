import Cocoa

func fn_1(aa:Int, bb:String){
    print("fn_1() aa:\(aa), bb:\(bb)")
}

fn_1(aa:10, bb:"원빈")

func fn_2(a aa:Int, bb:String){ //a : label (함수 호출시),
                                //aa : paramter(함수 내부코드)
    
                                // bb : label, parameter 동일
    print("fn_2() aa:\(aa), bb:\(bb)")
    //print("fn_2() a:\(a), bb:\(bb)")
}

//fn_2(aa:10, bb:"원빈")
fn_2(a:20, bb:"투빈")

func fn_3(aa:Int, _ bb:String){ // _ : label 명시 생략 --> 순서로 label 지정
    print("fn_3() aa:\(aa), bb:\(bb)")
}

fn_3(aa:30, "현빈")


func fn_4(aa:Int, bb:String, cc:Bool){
    print("fn_4() aa:\(aa), bb:\(bb), cc:\(cc)")
}
//초기값 : 매개변수가 입력되지 않을 경우 초기값으로 처리
func fn_5(aa:Int, bb:String="미스터빈", cc:Bool){
    print("fn_5() aa:\(aa), bb:\(bb), cc:\(cc)")
}
fn_4(aa:40, bb:"젤리빈", cc:true)
//fn_4(aa:30, cc:true)
fn_5(aa:50, bb:"장희빈", cc:true)
fn_5(aa:55, cc:false)

func fn_6(aa:String, bb:[Int]){
    print("fn_6() aa:\(aa), bb:\(bb)")
}
func fn_7(aa:String, bb:Int...){
    print("fn_7() aa:\(aa), bb:\(bb)")
}
fn_6(aa:"커피빈", bb:[11,33,55,77])
//fn_6(aa:"커피빈", bb:22,44,66,88)
//fn_7(aa:"김우빈", bb:[11,33,55,77])
fn_7(aa:"김우빈", bb:22,44,66,88)
