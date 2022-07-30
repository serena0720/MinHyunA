import Cocoa

/*
 1...45까지의 숫자를 중첩되지 않게 7개 랜덤하게 뽑기
 */

var lotto1 = [Int]()
var lotto2 = Set<Int>()

while true {
    let no = Int.random(in: 1...45)
    lotto1.append(no)
    lotto2.insert(no)
    
    if lotto2.count == 7{
        break
    }
}
print("lotto : \(lotto1)")  // 중복되는 숫자가 존재할 수 있음.
print("lotto : \(lotto2)")  // 중첩되는 숫자가 없음.


/*
var bingo1 = Set<Int>()
var bingo2 = Set<Int>()
var bingo3 = Set<Int>()
var bingo4 = Set<Int>()
var bingo5 = Set<Int>()

while true {
    let no2 = Int.random(in: 1...100)
    bingo1.insert(no2)
    if bingo1 != bingo2{
        bingo2.insert(no2)}
    bingo3.insert(no2)
    bingo4.insert(no2)
    bingo5.insert(no2)
    
    if bingo1.count == 5 &&
        bingo2.count == 5 &&
        bingo3.count == 5 &&
        bingo4.count == 5 &&
        bingo5.count == 5{
        break
    }
}
print(bingo1, terminator: "\n")
print(bingo2)
print(bingo3)
print(bingo4)
print(bingo5)
*/

//선생님 풀이

var bingo = Set<Int>()

while true {
    
    let no = Int.random(in: 1...100)
   
    bingo.insert(no)
    
    if bingo.count == 25 {
        break
    }
}

var cnt = 0
for i in bingo{
    print(i, terminator: "\t")
    cnt += 1
    if cnt % 5 == 0{
        print() // terminator 줄바꾸기
    }
}
