import Cocoa

var arr1 = [11,        22,    55,    44,    88,     22] //배열 변수 선언 및 초기화
//         arr1[0],arr1[1],arr1[2],arr1[3],arr1[4],arr1[5]
print("arr1:\(arr1)") //배열 호출
print("arr1[2]:\(arr1[2])") //배열원소 호출
arr1[3] = 4567  //배열원소 대입
print("arr1:\(arr1)")

var arr2:Array<Int> //선언만 한 상태

//print("arr2:\(arr2)") //배열 호출 실패 : 초기화 되지 않음 --> 배열이 생성되지 않음

arr2 = [100,200,300,400] //배열 대입
//arr2 = [100,200,300.123,400] //배열 원소 자료형이 맞지 않게 대입 불가
print("arr2:\(arr2)")

var arr3:[Int] = [13,35,57]
var arr4 = Array<Int>()
var arr5 = Array<Int>([99,88,77,66])
var arr6 = Array([222,444,666,888])
var arr7 = Array(10...20)
var arr8 = Array(stride(from: 100, through: 500, by: 100))
var arr9 = [10...20]  //통째로 원소 1개
var arr10 = [Int]()
print("arr3:\(arr3)")
print("arr4:\(arr4)")
print("arr5:\(arr5)")
print("arr6:\(arr6)")
print("arr7:\(arr7)")
print("arr8:\(arr8)")
print("arr9:\(arr9)")
print("arr10:\(arr10)")

var arr11 = Array(repeating: "상어", count: 5)
var arr12 = [Int](repeating: 7, count: 4)
print("arr11:\(arr11)")
print("arr12:\(arr12)")
print("arr1:\(arr1)") // [11, 22, 55, 4567, 88, 22]
//arr1[6] = 1234  배열 index 허용 범위이어야 한다
//aprint("arr1[6]:\(arr1[6])")
