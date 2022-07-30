import Cocoa

// 2차원 배열. 아파트를 쌓는다고 생각해라.
var arr:[[String]] = [         // 1차원
    ["0_0","0_1","0_2","0_3"],  // arr의 0번째. arr[0]
    ["1_0","1_1","1_2","1_3"],  // arr[1]
    ["2_0","2_1","2_2","2_3"]   // arr[2]
// 2차원 arr[?][0], arr[?][1], arr[?][2], arr[?][3]
]

print(arr)


print(arr[0]) // arr의 1차원을 부름.
print(arr[1])
print(arr[2])

print(arr[1][2])  // 1차원에 나란히 쓰면 2차원 값을 부르는 것

print("arr.count : \(arr.count)") // 본인의 차원만 봄. --> 차원에 맞춰서 작업을 해야함.
print("arr[0].count : \(arr[0].count)")

//
var arr2 = ["나","오늘","생일"]

var arr3:[[String]] = [
    ["happy","birth","day"],
    ["to","me"],
    arr2,
    arr[1],
    []  // 빈 칸도 가능.
]

print(arr3)
print("arr3.count : \(arr3.count)")
print("arr3[0].count : \(arr3[0].count)")

for aa in arr3{
    print(aa.count, aa)  // , 는 &로 프린트되지 않고 blank
}
// 원소를 추가.
arr3.append(["추가","하려면","배열로","넣어라"])  // 추가하려면 배열로 넣어야함. -> 단, 이것이 하나의 원소로 들어가게됨.
print(arr3)

// 특정 원소 안의 배열에 추가 하고 싶을 때,
arr3[2].append("축하")
print(arr3)
