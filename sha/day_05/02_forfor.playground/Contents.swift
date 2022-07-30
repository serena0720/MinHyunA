import Cocoa

for h in 1...12{
    print("[[\(h)시]]")
    for m in 0..<60{
        print("\(h) : \(m)")
    }
    // print("\(h) : \(m)")  // 외부라서 구현이 안된다.
}

print("구구단")
for dan in 2...9{
    print("\(dan)단")
    for gob in 1...9{
        print("\(dan)*\(gob)=\(dan*gob)")
    }
}

print("구구단을 옆으로 표현해라")
for gob in 1..<10{
    for dan in 2..<10{
        print("\(dan)*\(gob)=\(dan*gob)", terminator: "\t")
    }
    print()
}


print("구구단을 바둑판으로 표현해라")
for gob in 1..<10{
    for dan in 1...3{
        print("\(dan)*\(gob)=\(dan*gob)", terminator: "\t")
    }
    print()
    for dan in 4...6{
        print("\(dan)*\(gob)=\(dan*gob)", terminator: "\t")
    }
    print()
    for dan in 7...9{
        print("\(dan)*\(gob)=\(dan*gob)", terminator: "\t")
    }
    print()
}
