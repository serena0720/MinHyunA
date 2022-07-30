import Cocoa

// -> 시험 결과 연산 하는 함수 :::> 합격자만 추출   합격조건 : 결과점수 70점이상

typealias Stud = (kind:String, name:String, res:Int)
var result:[Stud] = []

func exam(_ name:String, _ jum:Int...){
    
    var tot = 0
    for i in jum {
        tot += i
    }
    let res = tot/jum.count
    if res >= 70 {
        result.append( ("일  반", name, res))
    }
}

func art(_ name:String, _ kor:Int,_ art:Int){
    
    let res = (art % 10) * 10
    //print(res)
    if res >= 70 {
        result.append( ("특기생", name, res))
    }
}

exam("정우성",78,95,93)
exam("정좌성",68,65,63)
exam("정남성",58,55,53)
exam("정중성",88,95,93)
art("장동건",78,92)
art("장남건",88,89)
art("장중건",75,48)
art("북두신건",77,84)


func ppp(){
    print("합격자>>>>>")
    for st in result{
        print("\(st.kind)\t\(st.name)\t\(st.res)")
    }
}

ppp()



print("---------------------------")
var area = 0 , border = 0

func rectangle(_ w:Int , _ h:Int){
    area += w * h
    border += (w + h) * 2
}
func triangle(_ w:Int , _ h:Int, _ a:Int){
    area +=  w * h / 2
    border += w + h + a
}
func circle(_ r:Double){
    let PI = 3.14
    area += Int(r * r * PI)
    border += Int(r * 2 * PI)
}
func shppp(){
    print("넓이:\(area), 둘레:\(border)")
}
rectangle(5, 6)
triangle(5,6,10)
circle(5)

shppp()



