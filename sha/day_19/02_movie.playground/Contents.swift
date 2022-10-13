import Cocoa

//전체이용가, 성인 나눠서 카운트
class CGV{
    
    //  [전체이용가, 청소년, 성인]
    var tot = [0,0,0]
    
    subscript(title:String, cnt:Int)->Void{ // return이 없는 경우
        get{
            let kind = ["뽀로로":0, "미니특공대":0, "아이언맨":1, "청소년영화":1, "범죄도시":2] // 순서를 지정하여 분류
            let no = kind[title]! //optional이기 때문에 !
            tot[no] += cnt
        }
    }
    
}

var cgv = CGV()
cgv["뽀로로", 3]
cgv["아이언맨", 5]
cgv["범죄도시", 1]
print(cgv.tot)

