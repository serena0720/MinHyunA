import Cocoa

typealias Stud = (name:String,jum:[Int],tot:Int,avg:Int) // [Int]는 여러 정수들의 목록
var st1:Stud = ("sha",[78,71,92],0,0)

for i in st1.jum{
    print(i)
    st1.tot += i
}
st1.avg = st1.tot / st1.jum.count
print(st1)

//1. 입력부
var studs:[Stud] = [
    ("장동건1",[78,71,92],0,0),  // , 잊지 말기
    ("장동건2",[58,73,72,57],0,0),
    ("장동건3",[68,41],0,0),
    ("장동건4",[78,51,42],0,0),
    ("장동건5",[88,61,52],0,0),
    ("장동건6",[98,71,92],0,0)
]

//2. 연산부
for i in 0..<studs.count{
    //print(studs[i].name) // 순서별 값을 알려준다.
    print(studs[i].jum)  // res -> [78, 71, 92]
    
    for j in studs[i].jum{
        studs[i].tot += j  // 각 학생의 각각의 점수를 나열하여 각 합을 구함.
        print(j)
    }  /* res -> 78
                  71
                  92 */
    
    studs[i].avg = studs[i].tot / studs[i].jum.count
    // 각 사람마다 과목 점수의 갯수가 달라도 계산이 된다.
    // 그렇기 떄문에 데이터 관리능력이 필오함. 빠진 요소가 있을지 체크.
}



//3. 출력부
for st in studs{
    //st.tot = 100  // for문으로 들어오는 것은 상수임.
    print(st)
}


/*
 직사각형 튜플을 정의하고 배열로 만들어 출력
 가로, 세로, 넓이, 둘레
 
 직사각형 5개 이상.
 */

typealias Sqa = (wid:Int, len:Int, area:Int, all:Int)
var sqa1:[Sqa] = [
        (10,20,0,0),
        (20,25,0,0),
        (30,30,0,0),
        (40,35,0,0),
        (50,40,0,0),
        (60,45,0,0)
]

for i in 0..<sqa1.count{
    for a in sqa1[i].area{
        sqa1.wid * sqa2.len
    }
}
