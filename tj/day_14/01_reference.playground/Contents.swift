import Cocoa

var a = 10
var b = a
//var ra = &a   참조변수 선언 및 대입 불가
a = 20
print("a:\(a) , b:\(b)")

//inout : 참조변수로 받는다
func fn_1(aa:[Int], bb:inout[Int]){
    print("fn_1() 시작 -------------")
    //aa[0] = 100  상수이기에 변경 불가
    bb[0] = 100     //참조변수는 주소형태로 받기 때문에 지정한 주소의 변수에 대입하는 형태임
    print("aa:\(aa)")
    print("bb:\(bb)")
    print("fn_1() 끝 -------------")
}

var arr1 = [10,20,30]
var arr2 = [10,20,30]


print("arr1:\(arr1)")
print("arr2:\(arr2)")
fn_1(aa:arr1, bb: &arr2) //참조변수 대입시 : & 표기
print("arr1:\(arr1)")
print("arr2:\(arr2)") //참조변수로 보냈기 때문에 main 에서도 변경된다.

print("=========================")
var vv1 = 1234
var vv2 = 1234
print("vv1:\(vv1)")
print("vv2:\(vv2)")
func fn_2(aa:Int, bb:inout Int){  //bb:참조변수
    print("fn_2() 시작 -------------")
    //aa = 5678
    bb = 5678
    print("aa:\(aa)")
    print("bb:\(bb)")
    print("fn_2() 끝 -------------")
}
fn_2(aa:vv1, bb:&vv2) //bb:참조변수로 대입
print("vv1:\(vv1)")
print("vv2:\(vv2)")
