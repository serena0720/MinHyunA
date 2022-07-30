import Cocoa

switch 60{
    
case 10 :
    print("10 입니다")
case 100 :
    print("100 입니다.") // 순서 상관 없음. 결과 값이 나오면 여기서 종료
case 80 :
    print("80 입니다.1")
case 80 :
    print("80 입니다.2") // 같은 값이 있어도 에러가 나지 않음. 값이 맞은 곳에서 종료
case 60 :
    print("60 입니다.")
    fallthrough  // 다음 거까지 진행시키고 종료.
case 50 :
    print("50 입니다.")
case 70 :
    print("70 입니다.")
default:
    print("기본값 입니다.")
    }

// 응용
/*
 switch 15 {
case 10:
    print("짝수 입니다.")
case 11:
    print("홀수 입니다.")
  // default 값이 없어서 에러
}
*/
switch 22 {
case 10,12,14,16,18: // , 는 or의 개념임. 이외의 숫자를 넣으면 default 값이 나옴.
   print("짝수 입니다.")
case 11,13,15,17,19:
   print("홀수 입니다.")
default:
    print("기본값 입니다.")
}

print(10...20) // 10 <= x <= 20
print(10..<20) // 10 <= x < 20
// print(10<..20) // 초과는 에러
print(10...) // 10 <= x
print(...20) //       x <= 20
print(...20) //       x < 20
// print(10<..) // 초과는 에러

switch 20{
case 50...60:  // 50이상이기 때문에 50 가능. 60 이하이기 때문에 60 가능.
    print("50...60 입니다.")
case 70..<80:
    print("70..<80 입니다.")
case ...10:
    print("...10 입니다.")
case ..<20:  // if 구문과 동일하게 더 넓은 범위가 뒤에 나와야 한다. --> 10< x <20 범위가 되는 것.
    print("..<20 입니다.")
case 100...:
    print("100... 입니다.")
default:
    print("기본값 입니다.")
}

//where 구문
let jj = 72
switch jj{
    
case 70..<80 where jj % 3 == 0: // 이 조건을 충족하면 여기서 종료.
    print("미, 3의 배수")
case 70..<80 where jj % 2 == 0:
    print("미, 2의 배수")
case 70..<80 :
    print("미")
case 60..<70:
    print("양")
case 50..<60:
    print("가")
default:
    print("가 입니다.")
}
