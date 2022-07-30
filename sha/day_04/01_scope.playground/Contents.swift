import Cocoa

var aa = "외부변수 aa"
var cc = "외부변수 cc"
if true{
    var bb = "내부 bb"
    print("if 구간 1 aa:\(aa), bb:\(bb), cc:\(cc)") // 중첩 선언 전 : 외부변수 --파이선은 중첩은 가능하나 외부, 내부 혼용 불가능/ c 언어는 가능 / java는 중첩 불가능
    
    var cc = 1234
    print("if 구간 2 aa:\(aa), bb:\(bb), cc:\(cc)") // 중첩 선언 후 : 내부변수
}else{
    print("else 구간 2 aa:\(aa), cc:\(cc)")
   // print("else 구간 aa:\(aa)", bb:\(bb)") --역시 불가능
}

print("종료 -- aa:\(aa), cc:\(cc)")

/*
 print("종료 -- aa:\(aa), bb:\(bb)")  -- 실행 불가능
: if 구간 내부에서 선언된 변수는 if 구간 내부에서만 사용 가능
 */
