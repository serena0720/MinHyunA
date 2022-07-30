import Cocoa


for line in 0..<5{
    for star in 0...line{
        print("*", terminator: "")
    }
    print()
}

for line in 0..<5 {
    for star in 0...4-line{
        print("*", terminator: "")
    }
    print()
}

for line in 0..<5 {
    for star in line..<5{
        print("*", terminator: "")
    }
    print()
}

for line in 0..<5 {
    for space in 0...4-line{
        print(" ", terminator: "")}
    for star in 0...line{
        print("*", terminator: "")
    }
print()
}
