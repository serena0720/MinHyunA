import Cocoa

var dd1 = ["호랑이":"포유류", "사자":"포유류", "독수리":"조류", "조로":"삼도류" ] //,"호랑이":"냥냥과"]

print(dd1)

var dd2:[String:Int] = [:]
print(dd2)

var dd3:Dictionary<String,Int> = [:]
print(dd3)

var dd4:[String:Int] = Dictionary()
print(dd4)

var dd5 = Dictionary<String,Int>()
print(dd5)

var dd6 = [String:Int] ()
print(dd6)

//print(dd1[0])
print(dd1["호랑이"]!)
dd1["독수리"] = "오형제"

dd1["문어"] = "나는 무너"

dd1.removeValue(forKey: "사자")
print(dd1)

var kk = dd1.keys
var vv = dd1.values
print(kk)
print(vv)

//print(kk[0])
var arr = Array(kk)
print(arr)
print(arr[0])

print(dd1["독수리"])
print(dd1["비둘기"])

print("------------------")

for (k, v) in dd1{
    print("\(k) => \(v)")
}

print("------------------")

for k in kk{
print("\(k) => \(dd1[k]!)")
}

print(dd1.isEmpty)
dd1.removeAll()
print(dd1.isEmpty)
print(dd1)

