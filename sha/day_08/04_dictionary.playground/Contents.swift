import Cocoa

// Dictionary 생성 방법들.

var dd1 = ["호랑이":"포유류", "사자":"포유류", "독수리":"조류", "조로":"삼도류"] // "호랑이":"냥냥"]
// 키워드와 값의 조합. 키워드는 겹치면 안됨.
print(dd1)

var dd2:[String:Int] = [:] // 비어있는 내용을 표시할 때도 이렇게 표시해야함.
print(dd2)

var dd3:Dictionary<String,Int> = [:]
print(dd3)

var dd4:[String:Int] = Dictionary()
print(dd4)

var dd5 = Dictionary<String,Int>()
print(dd5)

var dd6 = [String:Int]()
print(dd6)

//호출 및 수정

// print(dd1[0]) // 순서대로 배열되는 것이 아니기 때문에 안됨.
print(dd1["호랑이"]!) // optional 로 뜬다. 있을 수도 있고 없을 수도 있기 때문.

//값을 바꾸기. 대입.
dd1["독수리"] = "오형제"
print(dd1)

//추가. 대입과 동일한 방법.
dd1["문어"] = "나는 무너지지않아"
print(dd1)

//삭제
dd1.removeValue(forKey: "사자")
print(dd1)

var kk = dd1.keys // 키워드만 남기기
var vv = dd1.values // 값만 남기기
print(kk)
print(vv)

//print(kk[0])
var arr = Array(kk) // 키워드를 가져다가 배열화 시키기 --> 활용도가 높다.
print(arr)
print(arr[0])
