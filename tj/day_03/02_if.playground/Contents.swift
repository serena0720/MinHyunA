import Cocoa

var x = 50

var ttt:String

ttt = "엄마상어"

if true {
        
    print("if 문 참이지롱")
    ttt = "아기상어"
}

print("if문 종료 ------- \(ttt)")
var ttt2:String
if true {
    ttt2 = "장수풍뎅이"
    print("if~else 문 참이지롱")
}else{
    ttt2 = "사슴벌레"
    print("if~else 문 거짓부렁")
}
print("if~else 문 종료 -------------- \(ttt2)")
//else{
//    print("if~else 문 거짓부렁")
//}

var jj = 58
if jj >= 70 {
    print("합격")
}else{
    print("불합격")
}

print("------------------")

if jj >= 70 {
    print("우수")
}
if jj >= 50 {
    print("정상")
}else{
    print("미달")
}

print("------------------")

if jj >= 70 {
    print("우수2")
}else if jj >= 50 {
    print("정상2")
    if jj % 2 == 0 { //중첩 if문
        print("짝수")
    }else{
        print("홀수")
    }
}else if jj >= 30 {
    print("미흡2")
}else{
    print("미달2")
}

//else if jj >= 50 {
//    print("정상2")
//}

