import Cocoa

var i = 0 //초기값

while i < 5 { //조건
    
    print("while 문이다 \(i)")
    
    i += 2  //증감
}

print("while 문 종료 ------------- ")


// 10 -> 30 홀수 합을 구하세요

var tot = 0

i = 10
while i <= 30{
    if i % 2 == 1{
        tot += i
        print(i, tot)
    }
    i += 1
}


