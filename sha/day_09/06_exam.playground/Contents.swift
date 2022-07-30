import Cocoa

var list1:Set = ["박재상","박정권","최정","김광현","엄정욱","박희수","이호준"]
var list2:Set = ["이호준","엄정욱","박재홍","이신협","장동건"]
var fa:Set = ["이병규","이승엽","박정권","장동건","박용택","홍성흔"]

var list1Res = list1.subtracting(fa).subtracting(list2) // 병렬 가능.
print("1군 : \(list1Res)")
var list2Res = list2.subtracting(fa)
print("2군 : \(list2Res)")
var faRes = fa.subtracting(list1.union(list2))
print("FA : \(faRes)")
