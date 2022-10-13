import Cocoa

class AAA{
    
    var arr1 = [10,20,30]
    
    subscript(no:Int)->Int{ // 인스턴스 명
        get{
            print("subscript 실행 \(no)")
            return 1234 * no
        }
        set{
            print("subscript 실행 \(newValue)")
        }
    }
    subscript(ttt:String)->Double{
        get{
            print("subscript get String 실행 \(ttt)")
            return 123.456
        }
    }
    subscript(qq:Int, ttt:String)->Double{
        get{
            print("subscript get Int,String 실행 \(qq) , \(ttt)")
            return 123.456
        }
    }
}

var a1 = AAA()
print(a1.arr1)
print(a1.arr1[0])
// 단순 리턴값만 있을 때,
print(a1[1]) // 어떠한 숫자를 넣어도 리턴 값이 출력됨.
//만약 리턴값에 no의 값을 곱하면 결과값이 넣는 숫자에 따라 달라짐
print(a1[2])
// get only일 떼
// a1[2] = 200 // 오류
// set 에 newvalue를 넣으면
a1[2] = 200 // 대입이기 때문..? newvalue 값을 추가했으니까


print(a1["abc"]) // 오버로딩의 개념
print(a1[345,"abc"]) // 함수와 비슷
