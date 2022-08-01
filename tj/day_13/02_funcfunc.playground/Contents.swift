import Cocoa

func outFn(){
    var a = 10
    
    func inFn(){ //함수 내부에서 함수 정의 가능
        var b = 200
        print("\tinFn() 시작 : \(a), \(b)")
        a += 1
        b += 1
        print("\tinFn() 끝 : \(a), \(b)")
    }
    
    print("outFn() 시작 : \(a)")
    inFn()
    print("outFn() 끝 : \(a)")
   // print("outFn() 끝 : \(a), \(b)")
}

outFn()
//inFn()
//outFn.inFn()
