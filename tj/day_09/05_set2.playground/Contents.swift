import Cocoa

let ss1:Set = [11,22,33,44,55]
let ss2:Set = [33,44,55,66,77]


print("ss1:\(ss1)")
print("ss2:\(ss2)")

var res = ss1.union(ss2)
print("union:\(res)")
res = ss1.intersection(ss2)
print("intersection:\(res)")
res = ss1.symmetricDifference(ss2)
print("symmetricDifference:\(res)")
res = ss1.subtracting(ss2)
print("ss1.subtracting:\(res)")
res = ss2.subtracting(ss1)
print("ss2.subtracting:\(res)")


let t1:Set = ["박재상" , "박정권", "최정", "김광현", "엄정욱", "박희수", "이호준"]
let t2:Set = ["이호준","엄정욱","박재홍","이신협","장동건"]
let fa:Set = ["이병규", "이승엽", "박정권", "장동건", "박용택", "홍성흔"]

print("변경전>>>>>")
print("1군:\(t1)")
print("2군:\(t2)")
print("FA:\(fa)")
print("변경후>>>>>")
print("1군:\(t1.subtracting(t2).subtracting(fa))")
print("2군:\(t2.subtracting(fa))")
print("FA:\(fa.subtracting(t2).subtracting(t1))")
