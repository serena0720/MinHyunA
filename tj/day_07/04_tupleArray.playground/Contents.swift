import Cocoa

typealias Stud = (name:String, jum:[Int], tot:Int, avg:Int)

var st1:Stud = ("장동건",[78,71,92],0,0)

for i in st1.jum{
   // print(i)
    st1.tot += i
}
st1.avg = st1.tot / st1.jum.count
//print(st1)

//1. 입력부
var studs:[Stud] = [
    ("장동건",[78,71,92],0,0),
    ("장서건",[58,51,52,57],0,0),
    ("장남건",[98,92],0,0),
    ("장중건",[88,81,82],0,0),
    ("장북건",[68,61,62],0,0),
    ("북두신건",[78,71,72],0,0)
]

//2. 연산부
for i in 0..<studs.count{
    print(studs[i].jum)
    
    for j in studs[i].jum{
        studs[i].tot += j
        print(j)
    }
    
    studs[i].avg = studs[i].tot / studs[i].jum.count
}




//3. 출력부
for st in studs{
    
    //st.tot = 100
    print(st)
}

