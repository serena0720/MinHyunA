import Cocoa

var arr:[[String]] = [                          // 1차원
        ["0_0",     "0_1",      "0_2",  "0_3"],  //arr[0]
        ["1_0",     "1_1",      "1_2",  "1_3"],  //arr[1]
        ["2_0",     "2_1",      "2_2",  "2_3"]   //arr[2]
//2차원 arr[?][0], arr[?][1], arr[?][2], arr[?][3]
]

print(arr)


print(arr[0])
print(arr[1])
print(arr[2])
print(arr[1][2])

print("arr.count : \(arr.count)")
print("arr[0].count : \(arr[0].count)")


var arr2 = ["한가인","두가인","삼가인"]

var arr3:[[String]] = [
    ["현빈","원빈","투빈","골빈","장희빈","커피빈"],
    ["장동건","장서건"],
    arr2,
    arr[1],
    []
]

print(arr3)
print("arr3.count : \(arr3.count)")
print("arr3[0].count : \(arr3[0].count)")
print("--------------")
for aa in arr3{
    print(aa.count, aa)
}

arr3.append(["아기상어","엄마상어","아빠상어","할머니상어"])
print(arr3)

arr3[1].append("장남건")
print(arr3)
