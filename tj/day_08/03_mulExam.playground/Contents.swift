import Cocoa

var hit = [
    [3,5,8],
    [9,1,3,5],
    [7,8,5],
    [6,7]
]

//1. 전체 안타 갯수
//2. 최다 안타 번호
//3. 최다 안타 회차

var tot = 0

var player = Array(repeating: 0, count: 10)

var inning = -1, maxInning = -1

for i in 0..<hit.count{
    
    var h = hit[i]
    tot += h.count
    
    if maxInning < h.count{
        maxInning = h.count
        inning = i
    }
    
    for p in h{
     //   print(p)
        player[p] += 1
      //  print(player)
    }
    
   // print("\(tot) , \(h.count)-----------------")
}


//print(player)

var maxH = -1
var num = -1

for i in 0..<player.count{
   // print(i, player[i])
    if maxH < player[i]{
        maxH = player[i]
        num = i
    }
}



print("전체 안타 갯수:",tot)
print("최다 안타 번호:", num)
print("최다 안타 회차:", inning+1)



/*
   평균이 가장 높은 반은 어느 반인가요?
   성적이 가장 우수한 학생은 몇 반 몇 번인가요?
   합격자 인원수를 각 반별로 출력하세요 합격 커트라인 : 70
 
   1 :  78,54,82,66
   2 :  12,31,99,75,24,11
   3 :  67,68,71,
 
 */


var ban = [
    [78,54,72,66],
    [12,31,99,65,24,11],
    [67,88,68]
]

typealias BanRes = (no:Int, avg:Int, success:Int, topJum:Int, topNo:Int)

var res:[BanRes] = []

for i in 0..<ban.count{
    //print(i, ban[i])
    
    var bb:BanRes = (i, 0, 0,0,0)
    var tot = 0
    for n in 0..<ban[i].count{
        tot += ban[i][n]
        //print(n, ban[i][n])
        
        if ban[i][n] >= 70 {
            bb.success += 1
        }
        if bb.topJum < ban[i][n] {
            bb.topJum = ban[i][n]
            bb.topNo = n
        }
        
    }
    bb.avg = tot/ban[i].count
    
    res.append(bb)
    //print(res[i], tot)
}


var maxBan = -1
var maxAvg = -1
var topBan = -1, topNo = -1
var topJum = -1
for rr in res{
    if maxAvg < rr.avg {
        maxBan = rr.no
        maxAvg = rr.avg
    }
    
    if topJum < rr.topJum {
        topJum = rr.topJum
        topBan = rr.no
        topNo = rr.topNo
    }
    print("\(rr.no )반 합격자 : \(rr.success)")
}

print("최고 평균 반:", maxBan, maxAvg)
print("최고 성적:", topBan, topNo, topJum)


