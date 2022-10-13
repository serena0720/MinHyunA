import Cocoa

//1. 반지름으로 원의 넓이 구하라
//2. 반지름으로 원의 젋이를 정수로 구하라
//3. 구한 원의 넓이 중 짝수인 것만 필터링

let radius:[Double] = [5,8,17,1,3,9,21,7]

let res1 = radius.map{Int($0 * $0 * 3.14)}.filter{$0 % 2 == 0}

let res2 = res1.filter{$0 % 2 == 0}

print(res1)
print(res2)
