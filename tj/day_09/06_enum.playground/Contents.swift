import Cocoa

enum WeekDay{  //enum 정의 ::> 이렇게 생겼다
    case sun, mon, tue, wed, thu, fri, sat  //순서 변경, 추가, 삭제 모두 불가
}

//print(WeekDay)
print(WeekDay.mon)

var ww:WeekDay = WeekDay.tue
print(ww)
print("-----------------")
var arr1:[WeekDay] = [
    //mon
    WeekDay.sun, WeekDay.tue, WeekDay.fri, WeekDay.sun
]

for i in arr1{
    print(i)
}
print("-----------------")
enum WeekDay2:Int{
    case sun, mon, tue, wed, thu, fri, sat
    //     0    1    2    3    4    5   6
}

var arr2:[WeekDay2] = [
    //mon
    WeekDay2.sun, WeekDay2.tue, WeekDay2.fri, WeekDay2.sun
]
for i in arr2{
    print(i,i.rawValue)
}


print("-----------------")
enum WeekDay3:Int{
    case sun, mon = 100, tue,  wed = 50, thu, fri, sat
    //     0    100       101     50       51  52    53
}

var arr3:[WeekDay3] = [
   
    WeekDay3.sun, WeekDay3.tue, WeekDay3.fri, WeekDay3.sun
]
for i in arr3{
    print(i,i.rawValue)
}
