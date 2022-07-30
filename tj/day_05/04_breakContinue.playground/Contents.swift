import Cocoa

for i in 0...5{
    print("break 시작 \(i)")
    if i == 2{
        break
    }
    
    print("break 끝 \(i)")
}
print("break 종료 ---------------")

for i in 0...5{
    print("continue 시작 \(i)")
    if i == 2{
        continue
    }
    
    print("continue 끝 \(i)")
}
print("continue 종료 ---------------")
for i in 0...5{
    print("if 시작 \(i)")
    if i != 2{
        print("if 끝 \(i)")
    }
}
print("if 종료 ---------------")

for big in stride(from: 10, through: 50, by: 10){
    for small in 0...5{
        print("\(big) : \(small) ")
        
        if big == 20{
            break
        }
//        if small == 2{
//            break
//        }
    }
    
}
print("2중 for 종료 ---------------")


bb:for big in stride(from: 10, through: 50, by: 10){
    
    ss:for small in 0...5{
        print("\(big) : \(small) ")
        
        if small == 2{
            break bb
        }
    }
    
}
print("별칭 2중 for 종료 ---------------")
