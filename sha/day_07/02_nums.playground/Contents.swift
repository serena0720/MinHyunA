import Cocoa

// 2,3,5의 배수 별로 나누기
let arr = [34,56,77,61,29,86,73,25,31,55,29,82,17,12,9]

var arr2:[Int] = []
var arr3:[Int] = []
var arr5:[Int] = []


for i in arr{
    print(i)
    if i % 2 == 0 {
        arr2.append(i)
    }
    if i % 3 == 0 {
        arr3.append(i)
    }
    if i % 5 == 0 {
        arr5.append(i)
    }
}
print("2의 배수 : \(arr2)")
print("3의 배수 : \(arr3)")
print("5의 배수 : \(arr5)")


/*
 합격 커트라인 : 70
 1. 합격자 인원수
 2. 가장 낮은 점수 3개
 3. 합격자의 평균
 */

let std = [67,78,54,91,88,63,87,75,82]

/*
var top:[Int] = []

for i in std{
    if i >= 70 {
        top.append(i)
    }
}
print("합격자 인원수 : \(top.count)")
top.sort()
print("합격자 중 가장 낮은 점수 3개 : \(top.prefix(3))")
var sum = 0
for i in top{
    sum += i
}
print("합격자의 평균 : \(sum/top.count)")
*/

// 선생님 풀이
var res:[Int] = []
var tot = 0
for i in std{
    
    if i >= 70{
        //print(i)
        res.append(i)
        tot += i
    }
}
print("합격자 인원수 : \(res.count)")
res.sort()
print("낮은 점수 3명 : \(res.prefix(3))")
print("평균 : \(tot/res.count)")

