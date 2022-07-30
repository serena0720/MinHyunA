import Cocoa


func exam(_ name:String, _ kor:Int,_ eng:Int){
    let tot = kor+eng
    print("재직자\t\(name)\t\(tot)\t\(tot/2+10)")
}

func exam(_ name:String, _ kor:Int,_ eng:Int,_ mat:Int){
    let tot = kor+eng+mat
    print("일  반\t\(name)\t\(tot)\t\(tot/3)")
}

func exam(_ name:String, _ kor:Int,_ eng:Int, art:Int){ // _를 안넣어서 명시
    let tot = kor+eng+art
    let res = Double(kor)*0.2 + Double(eng)*0.1 + Double(art)*0.7
    print("예체능\t\(name)\t\(tot)\t\(tot/3)")
}

exam("정우성", 78, 72)
exam("정좌성", 78, 72, 75)
exam("정남성", 78, 52, 35)
exam("정북성", 78, 52, 75)
exam("정중성", 78, 52, art:35)
exam("감수성", 38, 52, art:75)
// 매개변수가 달라서 다른 함수가 작동 중

func shape(_ r:Double){
    let PI = 3.14
    print("원의 넓이: \(r*r*PI), 둘레: \(2*r*PI)")
}

func shape(_ w:Int, _ h:Int){
    print("원의 넓이: \(w*h), 둘레: \((w+h)*2)")
}

func shape(_ w:Int, _ h:Int, _ a:Int){
    print("원의 넓이: \((w+h)/2), 둘레: \(w+h+a)")
}

shape(5)
shape(5,6)
shape(5,6,7)
