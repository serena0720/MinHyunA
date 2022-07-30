import Cocoa

var i = 0  // 초기값

while i < 5 { // 조건
    print("while 문이다.\(i)")  // 실행구문
    i += 2 // 증감
}
print("while 문 종료-------------------")

// 10 -> 30 홀수 합을 구해라.
/*
 i = 10
while i < 31{
    if i % 2 == 1{
        i += i}
    else {i += 1}
}
print(i)
 */

var tot = 0

i = 10
while i <= 30{
    if i % 2 == 1{
        tot += i
        print(i, tot)
    }
    i += 1
}
