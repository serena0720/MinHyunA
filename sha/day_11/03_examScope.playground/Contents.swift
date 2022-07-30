import Cocoa

/*
 시험 결과를 연산하는 함수를 구현 후 합격자만 추출
 합격 조건 : 결과점수 70점 이상
 */

typealias Stud = (kind:String, name:String, res:Int) //기본값 형태
var result:[Stud] = [] // 전역변수 : 합격자들을 모을 곳
                    // 하기 함수들이 조건에 맞으면 결과값에 추가해라는 식.

func exam(_ name:String,_ jum:Int...){  // 개인 점수가 노출되지 않도록 함수안에서만 사용.  ...이 뒤에 나열인가봐
    
    var tot = 0
    for i in jum{
        tot += i
    }
    let res = tot/jum.count
    if res >= 70{
        result.append(("일 반", name, res))
    }
    //print(tot/jum.count)
    //result.append(("일 반", name, 82))
}

func art(_ name:String,_ kor:Int,_ art:Int){
    
    let res = (art % 10) * 10
   //print(res)
    if res >= 70{
      result.append(("특기생", name, res))
    }
}

//아래의 값을 함수를 통해 res에 넣기
exam("정우성",78,95,93)  // exam을 통해서 Stud에 넣는 작업중.
exam("정좌성",68,65,63)
exam("정남성",58,55,53)
exam("정중성",88,95,93)
art("장동건",78,92)
art("장남건",78,89)
art("장중건",78,48)
art("북두건",78,84)

func ppp(){  // res의 값을 호출해 내는 함수를 구축
    print("합격자>>>")
    for st in result{
        print("\(st.kind)\t\(st.name)\t\(st.res)")
}
}

ppp() //나와랏!

/*
 도형의 종류
 이름 넓이 둘레
 원
 직사각형
 직각삼각형
 */
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
//var sh = rectangle(5, 6)
//print(sh)

rectangle(5, 6)
triangle(5,6,10)
circle(5)

//print("넓이:\(area), 둘레:\(border)")

func shppp(){
    print("넓이:\(area), 둘레:\(border)")
}

shppp()

