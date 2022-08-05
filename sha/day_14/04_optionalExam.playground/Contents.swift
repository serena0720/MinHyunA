import Cocoa

var kor = ["정우성":78,"정좌성":58,"정남성":98,"정중성":88,"북두신성":68]
var eng = ["정우성":72,"정좌성":52,"정남성":92,"정중성":82,"북두신성":62]
var mat = ["정우성":74,"정좌성":54,"정남성":94,"정중성":84,"북두신성":64]

let names = ["정우성","정좌성","정남성","정중성","북두신성"]
typealias Stud = (name:String, tot:Int, avg:Int)
var res:[Stud] = []

for nn in names{
    var tot = kor[nn]! + eng[nn]! + mat[nn]!
    res.append((nn, tot, tot/3))
}

for st in res{
    print(st)
}

// 만약 시험을 중간 중간 안 본 학생이 있다면
kor = ["정우성":78,"정좌성":58,"정남성":98,"정중성":88]
eng = ["정우성":72,"정남성":92,"정중성":82,"북두신성":62]
mat = ["정우성":74,"정좌성":54,"정남성":94,"북두신성":64]

let names2 = ["정우성","정좌성","정남성","정중성","북두신성"]
typealias Stud2 = (name:String, tot:Int, avg:Int)
var res2:[Stud2] = []

for nn in names2{
    var tot2 = (kor[nn] ?? 0) + (eng[nn] ?? 0) + (mat[nn] ?? 0) // 안 본 학생 부분에 0 점으로 처리
    res2.append((nn, tot2, tot2 / 3))
}

for st in res2{
    print(st)
}
