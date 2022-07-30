import Cocoa

for i in 0...9{
    print(i)
}

print("for i in 0...9 종료")

for i in 0..<9{
    print(i)
}

print("for i in 0..<9 종료")

//for i in 0...{
//    print(i)
//}

for i in (0...9).reversed(){
    print(i)
}
print("for i in (0...9).reversed() 종료")

              //초기값.    조건.         증감
for i in stride(from: 3, through: 21, by: 2){
    print(i)
}
print("for i in stride(from: 3, through: 21, by: 2) 종료")

for i in stride(from: 3, to: 21, by: 2){
    print(i)
}
print("for i in stride(from: 3, to: 21, by: 2) 종료")


var tot = 0
for i in 1...100{
    //i = 10  : i 는 상수
    tot += i
    print(i, tot)
}

print("합계:", tot)

tot = 0
for i in 1...100{
    if i % 2 == 0{
        tot += i
        print(i, tot)
    }
}
print("짝수 합계:", tot)

tot = 0
for i in stride(from: 0, through: 100, by: 2){
    
        tot += i
        print(i, tot)
    
}
print("짝수 합계2:", tot)


tot = 0
var first = 1
first += first % 2
for i in stride(from: first, through: 100, by: 2){
    
        tot += i
        print(i, tot)
    
}
print("짝수 합계3:", tot)
