import Cocoa

let arr = [124,56,85,79,61,26,124,79,56,124,79,5,26,85,4]

//2,3,5,7 의 배수가 몇개 인지 출력하세요

var nums = [2:0, 3:0, 5:0, 7:0]


for i in arr{
    //print(i, nums)
    for (k, v) in nums{
        if i % k == 0{
            nums[k]! += 1
        }
    }
}

//for (k, v) in nums{
//    print("\(k) : \(v)")
//}
for k in  Array(nums.keys).sorted(){
    print("\(k) : \(nums[k]!)")
}
