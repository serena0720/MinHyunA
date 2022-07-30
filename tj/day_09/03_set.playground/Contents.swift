import Cocoa

var arr1 = [11,22,33,44,11,55,33,77,22,44]
var ss1:Set = [11,22,33,44,11,55,33,77,22,44]

print("arr1:",arr1)
print("ss1:",ss1)

ss1.insert(100)
ss1.insert(100)
ss1.insert(11)
ss1.remove(33)
ss1.remove(99)
print("ss1:",ss1)
print("ss1.contains(22):",ss1.contains(22))
print("ss1.contains(1234):",ss1.contains(1234))
print("ss1.count:",ss1.count)
//print("ss1[0]:",ss1[0])
var arr2 = Array(ss1)
print(arr2)
print(arr2[0])

var ss2 = Set(arr1)
print(ss2)
//print(ss2[0])


for i in ss1{
    print(i)
}


print("random : ",Int.random(in: 10...13))
