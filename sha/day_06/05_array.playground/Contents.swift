import Cocoa

/*
var arr1 = [11,  22,   55,    44,   88,   22] //  배열의 변수 선언 및 초기화
        //array0,array1,array2,array3,array4,array5
print("arr1:\(arr1)")  // 배열 호출
print("arr1[2]:\(arr1[2])")  // 배열 호출
arr1[3] = 4567 // 배열원소 대입
print("arr1:\(arr1)")
*/

var arr2:Array<Int>
//print("arr2:\(arr2)")  // 배열 호출 실패 : 초기화 되지 않음
arr2 = [100,200,300,400]  // 배열 대입
// arr2 = [100,200,300.123,400]  // 배열 원소 자료형이 맞지 않게 대입 불가  / Int에 Double을 넣을 수 없다.
print("arr2:\(arr2)")

var arr3:[Int] = [13,35,57,12,32,45]
var arr4 = Array<Int>()// 배열이 비어 있다
var arr5 = Array<Int>([99,88,77])
var arr6 = Array([222,444,555,666])
var arr7 = Array(10...20)
var arr8 = Array(stride(from: 100, through: 500, by: 100))
var arr9 = [10...20]  // 범위가 하나의 원고로 분류됨.
var arr10 = [Int]() // var arr4 = Array<Int>() 와 동일함.
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
print("arr3:\(arr3)")

var arr13:[Int] = [13,35,57,12,32,45]
// arr13[6] = 1234  // 배열의 index 범위를 벗어나면 오류.
// print("arr13[6]:\(arr13[6])") // 배열의 index 범위를 벗어나면 오류.
