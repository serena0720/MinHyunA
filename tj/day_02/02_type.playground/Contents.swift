import Cocoa

print("Number-------------")
var a = 1234567 //변수 선언시 자료형이 생략 :: 초기화 값의 형태로 자료형 자동 설정
                // 기본으로 Int
print(a)

//var b  변수 선언시 자료형을 명시하거나 초기화 하여 자료형을 지정해야 변수 선언 가능

var c:Int

c = a  //자료형이 같으므로 대입 가능
print(a, c)

//a = 123.456 자료형이 달라 대입 불가

var i8:Int8
i8 = 123
//i8 = 128   Int8 => -128 ~ 127
i8 = -128
//i8 = -129
print("i8:", i8)

/*
                Int8    Int16
     0000 0000  0       0       0000 0000  0000 0000
     0000 0001  1       1       0000 0000  0000 0001
     0000 0010  2       2       0000 0000  0000 0010
     ...
     0111 1110  126     126     0000 0000  0111 1110
     0111 1111  127     127     0000 0000  0111 1111
     1000 0000  -128    128     0000 0000  1000 0000
     1000 0001  -127    129     0000 0000  1000 0001
     1000 0010  -126    130     0000 0000  1000 0001
     ...
     1111 1101  -3      253     0000 0000  1111 1101
     1111 1110  -2      254     0000 0000  1111 1110
     1111 1111  -1      255     0000 0000  1111 1111
   1 0000 0000  0       256     0000 0001  0000 0000
 */

var i16:Int16 = 32767
//i16 = 32768
//i16 = i8  다른 자료형의 변수 대입 불가
//i8 = i16
print("i16:", i16)

var ii:Int = 123
//ii = 123.0
print("ii:", ii)

var ff:Float = 123.456
var qq = 135.79  //실수의 기본 자료형은 Double
ff = 987
//ff = i8
//ff = qq
print("ff:",ff)

var dd:Double = 246.89
//dd = ff
dd = qq
print("dd:",dd)

print("Bool-------------")
var bb = true
bb = false
//bb = 1
//bb = "true"
print(bb)

print("문자열-------------")
var ss = "a"  //문자 기본값은 String
//ss = 123
//ss = true
ss = "더조은 컴퓨터"
print(ss)

var str:String
str = ss
print(str)

var cc:Character
cc = "b"
//cc = "abcd"
//cc = ss
print(cc)


//ss = cc

print("type확인 ---------")
print("i8:",type(of:i8))
print("i16:",type(of:i16))
print("ii:",type(of:ii))
print("ff:",type(of:ff))
print("dd:",type(of:dd))
print("qq:",type(of:qq))
print("bb:",type(of:bb))
print("ss:",type(of:ss))
print("cc:",type(of:cc))


print("Casting-----------------")

print("숫자<-->숫자")
ii = Int(dd)
print(ii, dd)
ii = 468
dd = Double(ii)
print(ii, dd)

print("??<--문자열")
str = "1234"
//str = "일이삼사"
ii = Int(str)!
print(ii, str)
str = "246.975"
dd = Double(str)!
print(dd, str)
str = "true"
bb = Bool(str)!
print(bb, str)

str = "\(123) , \(123.45) , \(false) , \(i8), \(ff), \(cc), \(bb)"
print(str)

