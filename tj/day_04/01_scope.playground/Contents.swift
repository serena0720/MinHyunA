import Cocoa

var aa = "외부변수 aa"
var cc = "외부변수 cc"

if true{
    var bb = "내부 bb"
    print("if 구간 1 aa:\(aa), bb:\(bb), cc:\(cc)") //중첩 선언 전 : 외부변수
    
    var cc = 1234  //외부변수와 내부변수 중첩선언 가능
    print("if 구간 2 aa:\(aa), bb:\(bb), cc:\(cc)") //중첩 선언 후 : 내부변수
    
}else{
    //print("else 구간 aa:\(aa), bb:\(bb)")
    print("else 구간 aa:\(aa), cc:\(cc)")
}


//print("종료 -- aa : \(aa), bb:\(bb)") if구간 내부에서 선언된 변수는 if 구간 내부에서만 사용
print("종료 -- aa : \(aa), cc:\(cc)")

