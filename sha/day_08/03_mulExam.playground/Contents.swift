import Cocoa

//야구 경기를 생각했을 때,
var hit = [
    [3,5,8],
    [9,1,3,5],
    [7,8,5],
    [6,7]
]

/*
 1. 전체 안타 개수
 2. 최다 안타 번호  // 1부터 9 까지 숫자가 돈다는 조건 하이기 때문에, 이를 이용
 3. 최다 안타 회차
 */

//1. 조건
var tot = 0

//2. 조건
var player = Array(repeating:0, count:10)  // 똑같은 조건을 미리 깔아놓을 수 있어서 활용도가 높음.
// 인덱스의 번호가 곂치면 안된다.
// print(player)

//3. 조건
var inning = -1, maxInning = -1

for i in 0..<hit.count{
    var h = hit[i]   // 3. 계산식
    
    if maxInning < h.count{
        maxInning = h.count
        inning = i
    }
    
    tot += h.count  // 1. 계산식
    for p in h{    // 2. 계산식
      //  print(p)
        player[p] += 1  // 세로로 나열되는 값을 가로로 카운트
      //  print(player)
    }
  //  print("\(tot), \(h.count)--------------")
}

//print(player)

var maxH = -1  // 최솟값인 0 보다 작은 숫자를 넣은 것.
var num = -1

for i in 0..<player.count{
    // print(i, player[i])  // 각번호의 안타갯수
    if maxH < player[i]{
        maxH = player[i]
        num = i
    }
}

print(tot)
print(maxH, num)
print(maxInning, inning+1)  // "+1" 처음 0 없이 1부터 회차를 세서 그럼 무시해도 됨.



