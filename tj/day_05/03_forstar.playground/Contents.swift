import Cocoa

print("1--------------------")
for line in 0..<5{
    
    for star in 0...line{
        
        print("*", terminator: "")
    }
    
    print()
}



/*

&&&&*
&&&**
&&***
&****
*****

 */
print("2--------------------")
for line in 0..<5{
    
    for star in line..<5{
        
        print("*", terminator: "")
    }
    
    print()
}
print("3--------------------")
for line in 0..<5{
    
    for star in line..<5-1{
        
        print(" ", terminator: "")
    }
    for star in 0...line{
        
        print("*", terminator: "")
    }
    print()
}
