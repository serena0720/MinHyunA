import Cocoa

func shape(_ name:String, _ r:Int,_ area:Int,_ meter:Int){
    let area = Int(Double(r)*Double(r)*3.14)
    let meter = Int(Double(r)*2*3.14)
    print("원\t\t\(name)\t\(area)\t\(meter)")
}

func shape(_ name:String, _ w:Int, _ h:Int,_ area:Int,_ meter:Int){
    let area = w*h
    let meter = (w+h)*2
    print("직사각형\t\(name)\t\(area)\t\(meter)")
}

func shape(_ name:String, _ w:Int, _ h:Int, _ side:Int, _ area:Int,_ meter:Int){
    let area = w*h/2
    let meter = w+h+side
    print("직시삼각형\t\(name)\t\(area)\t\(meter)")
}

shape("1번", 5,0,0 )
shape("2번", 5,6,0,0)
shape("2번", 5,6,7,0,0)
