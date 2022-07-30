import Cocoa

//enum 정의 ::> 이렇게 생겼다.
enum WeekDay{
    case sun, mon, tue, wed, thu, fri, sat  // 순서 변경, 추가, 삭제 모두 불가.
}

// print(WeekDay) // 불가능
print(WeekDay.mon)

var ww:WeekDay = WeekDay.tue  // 자료형이 WeekDay로 정의
print(ww)

//enum의 원소를 활용하여, 배열 만들기.
var arr1:[WeekDay] = [
    //mon  // 잘못된 형태
    WeekDay.sun, WeekDay.tue, WeekDay.fri
    ]

for i in arr1{
    print(i)
}

//값을 추가하는 것은 가능.
enum WeekDay2:Int{
    case sun, mon, tue, wed, thu, fri, sat
    //    0    1    2     3    4     5    6
}

var arr2:[Week2Day] = [
    //mon  // 잘못된 형태
    WeekDay2.sun, WeekDay2.tue, WeekDay2.fri
    ]

for i in arr2{
    print(i, i.rawValue)  // 자동적으로 0부터 시작되는 수로 순서에 맞게 value가 배치
}

//임이의 값을 기재
enum WeekDay3:Int{
    case sun, mon=100, tue, wed, thu=50, fri, sat
    //    0  100으로 바뀌면서 101 102로 자동 갱신/ 51   52
}

var arr3:[WeekDay3] = [
    //mon  // 잘못된 형태
    WeekDay3.sun, WeekDay3.tue, WeekDay3.fri
    ]

for i in arr3{
    print(i, i.rawValue)  // 자동적으로 0부터 시작되는 수로 순서에 맞게 value가 배치
}
