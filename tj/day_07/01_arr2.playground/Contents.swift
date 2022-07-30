import Cocoa

var arr1 = [11,22,33,44]

print("arr1.count : \(arr1.count)")
arr1.append(100)
print("arr1.append(100) : \(arr1)")
arr1.insert(200, at:2)
print("arr1.insert(200, at:2) : \(arr1)")
arr1.insert(contentsOf: [123,345,567], at:4)
print("arr1.insert(contentsOf: [123,345,567], at:4) : \(arr1)")
var aa = arr1.remove(at: 1)
print("arr1.remove(at: 1) : \(arr1)")
print("aa : \(aa)")
aa = arr1.removeFirst()
print("arr1.removeFirst() : \(arr1)")
print("aa : \(aa)")
aa = arr1.removeLast()
print("arr1.removeLast() : \(arr1)")
print("aa : \(aa)")
var arr2 = arr1.removeSubrange(2...4)
print("arr1.removeSubrange(2...4) : \(arr1)")
print("arr2 : \(arr2)")

var arr3 = [33,55,77,22,44,66,55,11,77,22,55,44]

var arr4 = arr3[2...6]
print("arr3[2...6] \(arr4)")
arr4 = arr3.prefix(4)
print("arr3.prefix(4) \(arr4)")
arr4 = arr3.suffix(5)
print("arr3.suffix(5) \(arr4)")
print("arr3.first \(arr3.first!)")
print("arr3.last \(arr3.last!)")
print("arr3.max() \(arr3.max()!)")
print("arr3.min() \(arr3.min()!)")
print("arr3.index(of: 55) \(arr3.index(of: 55)!)" )
print("arr3.firstIndex(of: 55) \(arr3.firstIndex(of: 55)!)" )
print("arr3.lastIndex(of: 55) \(arr3.lastIndex(of: 55)!)" )
print("arr3.index(of: 100) \(arr3.index(of: 100) )" )
print("arr3.contains(22) \(arr3.contains(22) )" )
print("arr3.contains(100) \(arr3.contains(100) )" )

print("arr3:\(arr3)")
arr3[2...5] = [111,222,333]
print("arr3:\(arr3)")
arr3.replaceSubrange(4..<8, with: [999,888])
print("arr3:\(arr3)")

var arr5 = Array(arr3.reversed())
print("arr3.reversed() : \(arr5)")
arr5 = Array(arr3.sorted())
print("arr3.sorted() : \(arr5)")
arr5 = Array(arr3.sorted(by:>))
print("arr3.sorted(by:>) : \(arr5)")
arr5 = Array(arr3.sorted(by:<))
print("arr3.sorted(by:<) : \(arr5)")


arr3.reverse()
print("arr3.reverse() : \(arr3)")
//arr3.sort()
//print("arr3.sort() : \(arr3)")
//arr3.sort(by:>)
//print("arr3.sort(by:>) : \(arr3)")
arr3.sort(by:<)
print("arr3.sort(by:<) : \(arr3)")

var str1 = "12,23,34,45,56"
var arr7 = str1.split(separator: ",")
print("arr7: \(arr7)")
var arr8 = ["현빈","원빈","투빈","장희빈","커피빈","미스터빈"]
var str2 = arr8.joined(separator: "&")
print(str2)

var arr9 = Array("장수풍뎅이와 사슴벌레")
print("arr9: \(arr9)")
