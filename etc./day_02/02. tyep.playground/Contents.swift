import Cocoa

var a = 1234567
/* 변수 선언 시 자료형이 생략된 상태
 :: 초기화 값의 형태로 자료형 자동 설정
 기본으로 Int
 */
print(a)

//var b --> 불가능. 변수 선언 시 자료형을 명시하거나 초기화 하여 자료형을 지정해야 변수 선언 가능
var c : Int

c = a // 자료형이 같으므로 값 대입 가능
print (a, c)

// a = 123.456 // 자료형이 달라 대입 불가능

var i8:Int8
i8 = 123
print("i8:", i8)
// i8 = 128  -> 불가능 Int8=> -128 ~ 127
i8 = -128
print("i8:", i8) // 가능
// i8 = -129  -> 불가능

/*
 Int 8 --> 8 bit    Int 16
  0000 0000 0       0      0000 0000 0000 0000
  0000 0001 1       1      0000 0000 0000 0001
  0000 0010 2       2      0000 0000 0000 0010
  ...
  0111 1110 126     126    0000 0000 0111 1110
  0111 1111 127     127    0000 0000 0111 1111
  1000 0000 -128    128    0000 0000 1000 0000
  1000 0001 -127    129    0000 0000 1000 0001
 ...
  1111 1101 -3      253    0000 0000 1111 1101
  1111 1110 -2      253    0000 0000 1111 1110
  1111 1111 -1      253    0000 0000 1111 1111
(1 0000 0000)0      253    0000 0001 0000 0000
 */

var i16: Int16 = 32767
print("i16:" , i16)
// i16 = 32768 // 불가능
// i16 = i8  // 불가능. 다른 자료형의 변수 대입 불가. 변환을 해야 함

var ii:Int = 123
// ii = 123.0 // 불가능
print("ii:",ii)

var ff:Float = 123.456
ff = 987
// ff = i8 // 불가능
print("ff:", ff)

var qq = 135.79
//ff = qq  // 실수의 기본 자료형은 Double.
print("ff:", ff)

var dd:Double = 246.89
print(dd)
// dd = ff  // 불가능
dd = qq
print (dd)

//bool
var bb = true
bb = false
// bb = 1 // 없음
// bb = "true" // 없음
print(bb)

//문자열
var ss = "a" // 문자 기본값은 String
// ss = 123  // 불가능
// ss = true // 불가능
ss = "sha"
print(ss)

var str:String
str = ss
print(str)

var cc:Character // 한 글자만 가능
cc = "b"
print(cc)
// cc = :"abcd"
// cc = ss // 불가능

// ss = cc // 또한 불가능.아무리 String은 한글자가 가능해도 서로 호환 불가능

print("type확인 ---------") // 자료의 타입을 알려주는 명령어
print("i8:",type(of:i8))
print("i16:",type(of:i16))
print("ii:",type(of:ii))
print("ff:",type(of:ff))
print("dd:",type(of:dd))
print("qq:",type(of:qq))
print("bb:",type(of:bb))
print("ss:",type(of:ss))
print("cc:",type(of:cc))

// 형변화 Casting
/* 숫자 <-> 숫자 */
ii = Int(dd)
print (ii,dd)

dd = Double(ii)
print (ii , dd)

/* 문자열 -> ?? */
str = "1234" // 변환이 되는 경우
// str = "일이삼사"
ii = Int(str)! //Optional (?라는 경고 메세지) 에 대한 선택지가 생김 이전에는 예외처리를 한다.
print(ii, str)

str = "246.975"
dd = Double(str)!
print(dd, str)

str = "true"
bb = Bool(str)!
print(bb , str)

/* ?? -> 문자열 */  // \() <--- 이 명령어로 다 조져
str = "\(123) , \(123.45) , \(false) , \(i8), \(ff) , \(cc) , \(bb)"
print(str)

