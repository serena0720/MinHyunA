import Cocoa

for i in 0...5{
    print("break 시작 \(i)")
    if i==2{
        break
    }
    print("break 끝 \(i)")
}
print("break 종료 -----------------")

for i in 0...5{
    print("continue 시작 \(i)")
    if i==2{
        continue
    }
    print("continue 끝 \(i)")
}
print("continue 종료 -----------------")

//IF로 대체 가능하다
for i in 0...5{
    print("IF 시작 \(i)")
    if i != 2{
    print("IF 끝 \(i)")
    }}
print("IF 종료 -----------------")

for big in stride (from: 10, through: 50, by: 10){
    for small in 0...5{
        print("\(big) : \(small)")
        if big == 20{  // big 범위에서 종료가 돼도 다시 처음부터 반복문을 돈다.
        break
          /*
           if small == 2{  // small의 범위에서 종료이기때문에 big 이 계속 돈다.
                break
           */
            }
    }
}
print("2중 for문 종료 -----------------")

//구간의 이름을 특징하여 명령할 수 있다.
bb: for big in stride (from: 10, through: 50, by: 10){
    ss: for small in 0...5{
        print("\(big) : \(small)")

           if small == 2{
                break bb
        }
    }
    }
