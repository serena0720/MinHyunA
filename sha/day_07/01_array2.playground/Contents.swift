import Cocoa

var arr1 = [11,22,33,44]

// 원소의 갯수
print("arr1:count : \(arr1.count)")
// 중간에 배열에 추가하기
arr1.append(100)
print("arr1:append(100) : \(arr1)")
// 중간에 배열에 추가하기, 원하는 자리에 넣는 방법
arr1.insert(200, at:2)
print("arr1:insert(200, at:2) : \(arr1)")
// 중간에 배열에 추가하기, 원하는 자리에 여러 숫자를 넣는 방법
arr1.insert(contentsOf: [123,345,567], at:4)
print("arr1.insert(contentsOf: [123,345,567], at:4) : \(arr1)")

//원하는 위치의 수를 지우기
var aa = arr1.remove(at:1)
print("arr1.remove(at:1) : \(arr1)")
print("aa : \(aa)") // 빠진 숫자가 뭔지 보여주는 거
aa = arr1.removeFirst()
print("arr1.removeFirst() : \(arr1)")
print("aa : \(aa)") // 빠진 숫자가 뭔지 보여주는 거
aa = arr1.removeLast()
print("arr1.removeLast() : \(arr1)")
print("aa : \(aa)") // 빠진 숫자가 뭔지 보여주는 거

var arr2 = arr1.removeSubrange(2...4)
print("arr1.removeSubrange(2...4) : \(arr1)")
print("arr2 : \(arr2)") // 빠진 숫자가 뭔지 보여주는 거 ??????????????????????

//추출
var arr3 = [33,55,77,22,44,66,55,11,77,22,55,44]


var arr4 = arr3[2...6]  // 0번째 순서부터 카운트.
/*
 print("arr3[2...6] \(arr4)")
arr4 = arr3.prefix(4)  // 앞에서부터 순서를 센다.
print("arr4 = arr3.prefix(4) \(arr4)")
arr4 = arr3.suffix(5)  // 뒤에서부터 순서를 센다.
print("arr4 = arr3.suffix(5) \(arr4)")
*/
print("arr3.first \(arr3.first!)")
print("arr3.last \(arr3.last!)")
print("arr3.max() \(arr3.max()!)")
print("arr3.min() \(arr3.min()!)")
print("arr3.index(of:55) \(arr3.index(of:55)!)")  // 원소가 몇번째 순서에 있는가
print("arr3.firstIndex(of:55) \(arr3.firstIndex(of:55)!)")  // 동일한 값의 원소가 왼쪽에서 몇번째 순서에 있는가
print("arr3.lastIndex(of:55) \(arr3.lastIndex(of:55)!)")  // 동일한 값의 원소가 오른쪽에서 몇번째 순서에 있는가
print("arr3.index(of:100) \(arr3.index(of:100))")  // 없는 원소를 검색했을 때 --> 결과값이 arr3.index(of:100) nil로 나옴
print("arr3.contains(22) \(arr3.contains(22))")  // 원소 값을 갖고 있는 지 확인 true/false
print("arr3.contains(100) \(arr3.contains(100))")  // 원소 값을 갖고 있는 지 확인 true/false
//원소 바꿔치기
print("arr3:\(arr3)") //arr3:[33, 55, 77, 22, 44, 66, 55, 11, 77, 22, 55, 44]
arr3[2...5] = [111,222,333]
print("arr3:\(arr3)")
arr3.replaceSubrange(4..<8, with: [999,888]) // 치환하려는 갯수가 서로 달라도 상관 없다. 특정 범위 내의 것을 지우고, 원하는 원소들로 채워 넣는것.
print("arr3:\(arr3)")
var arr5 = Array(arr3.reversed())
print("arr3.reversed():\(arr5)")
var arr6 = Array(arr3.sorted())
print("arr3.sorted():\(arr6)")  // 원소들의 입력값 순서 따라 정렬. 기본값은 올림차순
arr6 = Array(arr3.sorted(by:>))
print("arr3.sorted(by:>):\(arr6)")  // 원소들의 입력값 순서 따라 정렬. 내림차순으로 정렬

//자기자신을 바꾸기
arr3.reverse()
print("arr3.reverse() : \(arr3)")
//arr3.sort() = arr3.sort(<)
//print("arr3.sort() : \(arr3)")
arr3.sort(by:>)
print("arr3.sort(by:>) : \(arr3)")

//문자열 배열
var str1 = "12,23,34,45,56"
var arr7 = str1.split(separator: ",") // , 를 기준으로 나누겠다.
print("arr7: \(arr7)") // 숫자가 아닌 문자로 인식 중

//문자열로 되어있는 배열을 문자열로 바꾸기
var arr8 = ["a","b","c","d","e","f"]
var str2 = arr8.joined(separator: "&")  // & 로 하나의 문자열로 합치는 것이 가능
print(str2) // a&b&c&d&e&f

var arr9 = Array("장수풍뎅이와 사슴벌레")
print("arr9: \(arr9)") // 하나의 문자열을 한 마디씩 끊어서 여러개의 문자열로 나눔
//arr9: ["장", "수", "풍", "뎅", "이", "와", " ", "사", "슴", "벌", "레"]
