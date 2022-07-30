import Cocoa

var lotto1 = [Int]()
var lotto2 = Set<Int>()

while true {
    
    let no = Int.random(in: 1...45)
    lotto1.append(no)
    lotto2.insert(no)
    
    if lotto2.count == 7 {
        break
    }
}

print("lotto1 : \(lotto1)")
print("lotto2 : \(lotto2)")



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
        print()
    }
}
