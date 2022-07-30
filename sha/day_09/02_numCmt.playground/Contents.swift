import Cocoa

/*
 Exam) 124,56,85,79,61,26,124,79,56,124,79,5,26,85,4
 2,3,5,7의 배수가 몇개
 */

/* 현아 풀이
var num = "124,56,85,79,61,26,124,79,56,124,79,5,26,85,4"

let aa = num.split(separator: ",")
var wwCnt2 = [String:Int]()
for j in aa{
    var no2 = 1
    var no3 = 1
    var no7 = 1
    if wwCnt2[String(j)]! % 2 == 0{
        no2 += wwCnt2[String(j)]!
    }
    else if wwCnt2[String(j)]! % 3 == 0{
        no3 += wwCnt2[String(j)]!
    }
    else if wwCnt2[String(j)]! % 7 == 0{
        no7 += wwCnt2[String(j)]!
    }
    print("2의 배수 개수 : \(no2)")
    print("3의 배수 개수 : \(no3)")
    print("7의 배수 개수 : \(no7)")
}
*/
let arr = [124,56,85,79,61,26,124,79,56,124,79,5,26,85,4]

//2,3,5,7 의 배수가 몇개 인지 출력하세요

var nums = [2:0, 3:0, 5:0, 7:0]


for i in arr{
    // print(i, nums)
    for (k, v) in nums{  // k는 key, v는 value 값
        if i % k == 0{
            nums[k]! += 1
        }
    }
}

for (k, v) in nums{  // k는 key, v는 value 값
    print("\(k) : \(v)")
}
//위의 결과를 정렬.
for k in Array(nums.keys).sorted(){
    print("\(k) : \(nums[k]!)")
}
