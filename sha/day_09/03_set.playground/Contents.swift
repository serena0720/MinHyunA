import Cocoa

var arr1 = [11,22,33,44,11,55,33,77,22,44]
var ss1:Set<Int> = [11,22,33,44,11,55,33,77,22,44]  // <Int> 생략 가능

print("arr1:", arr1)
print("ss1:", ss1)  // 순서가 무작위, 중복이 불가능.

ss1.insert(100)  // 추가
print("ss1:", ss1)

ss1.insert(100)  // 같은 값을 추가하면 변화가 없음.
print("ss1:", ss1)

ss1.remove(100)  // 삭제.
print("ss1:", ss1)

ss1.remove(99)  // 존재하지 않는 값을 삭제해도 오류나지 않음.
print("ss1:", ss1)

ss1.contains(11)  // 존재의 유무를 물어봄. true 값
print("ss1:", ss1.contains(11))

ss1.contains(100)  // 존재의 유무를 물어봄. false 값
print("ss1:", ss1.contains(100))

ss1.count  // 원소의 갯수
print("ss1:", ss1.count )

/*
ss1[0]  // 몇번쨰의 원소를 묻는 것은 불가능
print("ss1:", ss1[0])
*/

var arr2 = Array(ss1) // 배열로 바꿔준다.
print(arr2)
print("arr2:", arr2[0]) // 몇번째에 있는 원소를 묻는 것이 가능해진다.

var ss2 = Set(arr1) // 배열을 셋으로 바꿈.
print(ss2) // 중복된 값이 자동으로 합쳐짐.
//print(ss2[0]) // 이제 셋이기 때문에 몇번째 원소를 묻는 것이 불가능해짐.

for i in ss1{ // set도 for 문 가능
    print(i)
}

print("random : "Int.random(in: 10...13)) // 랜덤한 숫자를 뽑는 것이 가능
