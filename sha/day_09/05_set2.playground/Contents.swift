import Cocoa

let ss1:Set = [11,22,33,44,55]
let ss2:Set = [33,44,55,66,77]

print("ss1:\(ss1)")
print("ss2:\(ss2)")

//union : 합집합
var res = ss1.union(ss2)
print("union:\(res)")

//intersection : 교집합
res = ss1.intersection(ss2)
print("intersection:\(res)")

//symmetricDifference : 합집합-교집합
res = ss1.symmetricDifference(ss2)
print("symmetricDifference:\(res)")

// subtracting : ss1-ss2 차집합 (ss1이 베이스)
res = ss1.subtracting(ss2)
print("ss1.subtracting:\(res)")

// subtracting : ss2-ss1 차집합 (ss2이 베이스)
res = ss2.subtracting(ss1)
print("ss2.subtracting:\(res)")
