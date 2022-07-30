import Cocoa

var a = 60, b = 24

var res = 1
var aa = a, bb = b  /// 나누어진 몫을 변경하여 저장하는 변수

if a > b {
    aa = b
    bb = a
}

for i in 2...aa{
    
    for j in 2...aa{
        if aa % j == 0 && bb % j == 0{
            res *= j
            aa /= j
            bb /= j
            print(j, res, aa, bb)
            break
        }
    }
}

print(aa*bb*res)
