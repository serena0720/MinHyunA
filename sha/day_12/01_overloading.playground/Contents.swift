import Cocoa

func fn(aa:Int, bb:String){
    print("fn()실행:\(aa), \(bb)")
    
}
/*
func fn(aa:Int, bb:String){
    print("fn()실행2:\(aa), \(bb)")
}*/

//over loading

func fn(aa:Int, bb:String, cc:String){
    print("매개변수 갯수가 다른 경우:\(aa), \(bb), \(cc)")
    
}

func fn(aa:Int, cc:String){
    print("레이블 이름이 다른 경우:\(aa), \(cc)")
    
}

func fn(aa:Int, bb:Int){
    print("매개변수 이름이 다른 경우:\(aa), \(bb)")
    
}

/* 매개변수 이름만 다른 것은 오버로딩이 아니다
func fn(aa:Int, bb qq:String){
    print("fn()실행:\(aa), \(qq)")
}

 리턴과 오버로딩은 관계가 없다
func fn(aa:Int, bb:String)->Int{
    print("fn()실행:\(aa), \(bb)")
    return 100;
}*/


fn(aa:10, bb:"나는문어")
fn(aa:20, bb:"나는문어", cc:"사슴벌레")
fn(aa:30, cc:"나는상어")
fn(aa:40, bb:1234)
