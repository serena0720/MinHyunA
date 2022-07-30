import Cocoa

//2,3,5의 배수 별로 나누어 주세요

let arr = [34,56,77,61,29,86,73,25,31,55,29,24,82,17,12,9]

var arr2:[Int] = []
var arr3:[Int] = []
var arr5:[Int] = []

for i in arr{
    print(i)
    if i % 2 == 0{
        arr2.append(i)
    }
    if i % 3 == 0{
        arr3.append(i)
    }
    if i % 5 == 0{
        arr5.append(i)
    }
}

print("2의 배수 : \(arr2)")
print("3의 배수 : \(arr3)")
print("5의 배수 : \(arr5)")


let nums = [67,78,54,91,88,63,87,75,82]

var res:[Int] = []
var tot = 0
for i in nums{
    
    if i >= 70 {
        //print(i)
        tot += i
        res.append(i)
    }
    
}
res.sort()
print(res)
print("인원수 : \(res.count)")
print("낮은 점수 : \(res.prefix(3))")
print("평균 : \(tot / res.count)")
