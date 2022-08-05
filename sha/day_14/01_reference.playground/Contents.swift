import Cocoa

var a = 10
var b = a
//var ra = &a  // 보안상 문제로, 참조변수 선언 및 대입 불가
a = 20
print("a:\(a), b:\(b)")
// b는 a 값이 변하기 전에 정의 됐기때문에 a의 변경된 값이 적용되지 않음.

//입력부
//inout : 참조변수를 받는다는 뜻.
func fn_1(aa:[Int], bb:inout[Int]){
    print("fn_1() 시작-------------")
    //aa[0] = 100  // 상수이기때문에 변경 불가
    bb[0] = 100 // 참조변수는 주소형태로 받기 때문에 지정한 주소의 변수에 대입하는 형태임.
    print("aa:\(aa)")
    print("bb:\(bb)")
    print("fn_1() 끝--------------")
}

var arr1 = [10,20,30]
var arr2 = [10,20,30]

//출력부
print("arr1:\(arr1)")
print("arr2:\(arr2)")
fn_1(aa:arr1, bb:&arr2) // 참조변수 대입 시 : & 표기
print("arr1:\(arr1)")
print("arr2:\(arr2)") // 참조변수에 대입을 때문에 main에서도 변경이 된다.


print("===============================")
var vv1 = 1234
var vv2 = 1234

print("vv1:\(vv1)")
print("vv2:\(vv2)")

func fn_2(aa:Int, bb:inout Int){ // bb : 참조변수
    print("fn_2() 시작-------------")
    //aa = 5678  // 안됨
    bb = 5678
    print("aa:\(aa)")
    print("bb:\(bb)")
    print("fn_2() 끝--------------")
}

fn_2(aa:vv1, bb:&vv2)

print("vv1:\(vv1)")
print("vv2:\(vv2)")
