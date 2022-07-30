import Cocoa

for i in 0...9{
    print(i)
}
print("for i in 0...9 종료")

for i in 0..<9{
    print(i)
}
print("for i in 0..<9 종료")

/*
for i in 0...{
    print(i)
}
// 불가능
*/

for i in (0...9) .reversed(){
    print(i)
}
// 순서가 거꾸로 된다
print("------------------------")
              //초기값.   조건.         증감.
for i in stride(from: 3, through: 21, by: 2){
    print(i)
}
// stride 사용
print("------------------------")

               //초기값.   조건.         증감.
for i in stride(from: 3, to: 21, by: 2){
print(i)
}
// stride 사용
print("------------------------")


for i in 1...100{
    //i=10   :i 는 상수 이기때문에 변경 불가능
    print(i)
}

print("------------------------")

var tot = 0
for i in 1...100{
    tot += i
    print(i, tot)
}  // tot는 1부터 100까지의 합계를 보여줌

print("------------------------")

tot=0
for i in 1...100{
    if i % 2 == 0{tot += i}}

print("1...100 짝수의 합:", tot)

tot=0
for i in stride(from: 0, through: 100, by: 2){
 tot += i
}

print("1...100 짝수의 합:", tot)


/* 선생님 풀이
 
 1. if
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
 */
