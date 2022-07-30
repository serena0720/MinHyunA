import Cocoa

//최소공배수 찾기

var a = 60, b = 24

var res = 1  // 기준점 만들기
var aa = a, bb = b //나누어진 몫을 변경하여 저장하는 변수 - 마지막 소수를 구하기 위함

if a > b{  // 효율을 위해서
    aa = b;
    bb = a
}

for i in 2...aa{  // 더 작은 숫자를 기준으로
    
    for j in 2...aa{
    if aa % j == 0 && bb % j == 0{ //일단 정의
        res *= j
        aa /= j
        bb /= j
        print(j, res, aa, bb)
        break
    }
    }
}

print(aa*bb*res)
