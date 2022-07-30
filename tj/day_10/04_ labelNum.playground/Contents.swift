import Cocoa

func minMax(kind:String="min" ,_ arr:Int...){
    var res = arr[0]
    
    for i in arr{
        
        if kind=="min" && res > i{
            res = i
        }
        if kind=="max" && res < i{
            res = i
        }
    }
    print("\(kind) : \(res)")
}
minMax(45,6,89,4,56,25)
minMax(kind:"min",45,6,89,4,56,25)
minMax(kind:"max",45,6,89,4,56,25)


//숫자들을 입력하여 기본수의 배수의 총점, 평균을 출력하는 함수를 구현하세요
// num 생략시 2의 배수

func multiple(num:Int = 2, _ arr:Int...){
    var tot = 0
    var cnt = 0
    for i in arr{
        if i % num == 0{
            tot += i
            cnt += 1
            print(tot, i, cnt)
        }
    }
    
    print("\(num) 의 배수 합계 : \(tot), 평균 : \(tot/cnt)")
}


multiple(num:3, 5,7,23,4,67,9,12,13,40,14,57,8,27,24,35)
multiple( 5,7,23,4,67,9,12,13,40,14,57,8,27,24,35)
