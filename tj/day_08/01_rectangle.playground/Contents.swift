import Cocoa

/*
 직사각형 튜플을 정의하고 배열로 만들어 출력하세요
 가로, 세로, 넓이, 둘레
 넓이 : 가로 * 세로
 둘레 : (가로 + 세로) * 2
 직사각형 5개 이상
*/

typealias Rec = (w:Int, h:Int, area:Int, border:Int)

var recs:[Rec] = [
    (5,6,0,0),
    (10,20,0,0),
    (9,5,0,0),
    (7,7,0,0),
    (12,12,0,0)
]

for i in 0..<recs.count{
    recs[i].area = recs[i].w * recs[i].h
    recs[i].border = (recs[i].w + recs[i].h) * 2
}

for r in recs{
    print(r)
}
