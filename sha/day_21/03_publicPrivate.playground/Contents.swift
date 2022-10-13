import Cocoa

class ParAAA{
    var a = 10
    private var b = 20
    
    func fn_1(){
        print("ParAAA fn_1() 실행")
    }
    
    private func fn_2(){
        print("private ParAAA fn_2() 실행")
    }
    
    func fn_tot(){
        // 같은 class내부에서 private 접근 가능
        print("ParAAA fn_tot() 시작 \(a), \(b)---------------")
        fn_1()
        fn_2()
        print("ParAAA fn_tot() 끝----------------")
    }
}

class ChildAAA:ParAAA{
    //상속받은 클래스에서도 private 사용 불가능
    func fn_tot2(){
        
        print("ChildAAA tot()시작 \(a)---------------")
        //print("ChildAAA fn_tot() 시작 \(a), \(b)---------------")
        fn_1()
        //fn_2()
        
        print("ChildAAA tot()끝----------------")
    }
}

var pa = ParAAA()
print("pa.a:\(pa.a)")
//print("pa.b:\(pa.b)") : private은 사용 불가
pa.fn_1()
//pa.fn_2() : private은 사용 불가
pa.fn_tot()
