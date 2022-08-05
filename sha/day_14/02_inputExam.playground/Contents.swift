import Cocoa

typealias Stud = (name:String, jum:Int)

var su1:[Stud] = []
var su2:[Stud] = []
var tot:[Stud] = []

var ban1:[Stud] =
[("정우성", 79),("정좌성", 59),("정남성", 89),("정중성", 69),("정북성", 99)]
var ban2:[Stud] =
[("장동건", 93),("장서건", 83),("장남건", 23),("북두신건", 95)]

func exam(ban:[Stud], su:inout [Stud]){
    for b in ban{
        if b.jum >= 80 {
            su.append(b)
        }
    }
}

print("su1:\(su1)")
print("su2:\(su2)")
print("tot:\(tot)")
exam(ban:ban1, su:&su1)
exam(ban:ban2, su:&su2)
exam(ban:ban1, su:&tot)
exam(ban:ban2, su:&tot) // 위에 append했던 내용이 누적되어 쌓인다. tot라는 집안에 변수를 수정한다는 느낌.
print("su1:\(su1)")
print("su2:\(su2)")
print("tot:\(tot)")

/*
 함수를 1개만 정의하여 각 배열에서 3의 배수들을 취합하라
 
 배열1 : [34,56,7,12,12,6,81,74,63,11,24]
 배열2 : [54,16,92,15,17,9,212,33,44,55,66]
 결과 : []
 triple(배열1, 결과)
 */

var arr1 = [34,56,7,12,12,6,81,74,63,11,24]
var arr2 = [54,16,92,15,17,9,212,33,44,55,66]
var res:[Int] = []

func triple(_ arr:inout [Int]){
    for a in arr{
        if a % 3 == 0{
            res.append(a)
        }
    }
}

triple(&arr1)
triple(&arr2)
print("3의 배수 :",res)
