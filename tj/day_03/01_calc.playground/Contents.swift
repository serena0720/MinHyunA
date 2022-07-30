import Cocoa

print("2.1 산술연산자---------------------")
var x = 15, y = 7
//var x = "장동건", y = "정우성"   더하기 연산만 가능
//var x = true, y = false       연산불가

print("\(x) + \(y) = \(x + y)")
print("\(x) - \(y) = \(x - y)")
print("\(x) * \(y) = \(x * y)")
print("\(x) / \(y) = \(x / y)")
print("\(x) % \(y) = \(x % y)")
print(3 + 4 * 5)
print( (3 + 4) * 5)

print("2.2 비교연산자---------------------")
x = 30
y = 20

print("\(x) > \(y) = \(x > y)")
print("\(x) >= \(y) = \(x >= y)")
print("\(x) <= \(y) = \(x <= y)")
print("\(x) < \(y) = \(x < y)")
print("\(x) == \(y) = \(x == y)")
print("\(x) != \(y) = \(x != y)")

var x2 = "정우상", y2 = "정우성"

print("\(x2) > \(y2) = \(x2 > y2)")
print("\(x2) >= \(y2) = \(x2 >= y2)")
print("\(x2) <= \(y2) = \(x2 <= y2)")
print("\(x2) < \(y2) = \(x2 < y2)")
print("\(x2) == \(y2) = \(x2 == y2)")
print("\(x2) != \(y2) = \(x2 != y2)")

var x3 = true, y3 = true

//print("\(x3) > \(y3) = \(x3 > y3)")
//print("\(x3) >= \(y3) = \(x3 >= y3)")
//print("\(x3) <= \(y3) = \(x3 <= y3)")
//print("\(x3) < \(y3) = \(x3 < y3)")
print("\(x3) == \(y3) = \(x3 == y3)")
print("\(x3) != \(y3) = \(x3 != y3)")

print("\(x) > \(y) + 20 = \(x > y + 20)")

print("2.3 논리연산자---------------------")
x3 = false
y3 = false

print("\(x3) && \(y3) = \(x3 && y3)")
print("\(x3) || \(y3) = \(x3 || y3)")
print("!\(x3)  = \( !x3 )")

let age = 49
let color = "녹색"

//let ageChk = age <= 25
//let ccChk = color == "빨강"

//print("And : \(ageChk && ccChk)")
//print("Or : \(ageChk || ccChk)")

print("And : \(age <= 25 + 50 && color == "빨강")")
print("Or : \(age <= 25 + 50 || color == "빨강")")

print("2.4 복합할당연산자---------------------")
x = 10

x = x + 5

print("x = x + 5  : \(x)")

x += 4
print("x += 4  : \(x)")
x -= 2
print("x -= 2  : \(x)")
x *= 3
print("x *= 3  : \(x)")
x /= 2
print("x /= 2  : \(x)")
x %= 6
print("x %= 6  : \(x)")


print("3. 조건연산자---------------------")

print(false ? "참이지롱" : "거짓부렁")

x = 88
var res = x >= 70 ? "합격" : "불합격"
print("\(x) : \(res)")

res =   x >= 80 ? "우수" :
        x >= 60 ? "양호" :
        x >= 40 ? "정상" : "미달"
print("\(x) : \(res)")
