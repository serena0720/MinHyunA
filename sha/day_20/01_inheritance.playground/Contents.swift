import Cocoa

class Par1{
    var a = 10
    var b = 20
    
    func fn_1(){
        print("부모1 fn_1() 실행")
    }
    
    func fn_2(){
        print("부모1 fn_2() 실행")
    }
}

class Par2{
    var c = 30

    func fn_3(){
        print("부모2 fn_3() 실행")
    }
}

// 자식클래스 : 부모클래스 --> 상속 시키는 것.
class Child1 : Par1{//} , Par2{ 2개의 상위클래스(부모)를 가질 수 없다. 다중상속 불가/ c++은 가능
    var e = 555
    var f = 666
    
    func fn_5(){
        print("자식1 fn_5() 실행")
    }
    
    func fn_6(){
        print("자식1 fn_6() 실행")
    }
}

//하나의 부모클래스에 중복 자식클래스는 가능
class Child2 : Par1{
    var e = 555
    var k = "자식k"
    
    func fn_5(){
        print("자식1 fn_5() 실행")
    }
    
    func fn_8(){
        print("자식1 fn_8() 실행")
    }
}

var pp1 = Par1()
var cc1 = Child1()
var cc2 = Child2()

//상속 관게가 아닐 때 서로 호출 불가
//상속된 관계에서도 부모클래스가 자식클래스를 호출 불가
print("pp1 : \(pp1.a), \(pp1.b)")
//print("pp1 : \(pp1.a), \(pp1.b), \(pp1.e), \(pp1.f)")
pp1.fn_1()
pp1.fn_2()
//pp1.fn_5()
//pp1.fn_6()

//상속 관게가 아닐 때 서로 호출 불가
//상속된 관계에선 자식클래스는 부모클래스 호출 가능
print("cc1 : \(cc1.e), \(cc1.f)")
//print("cc1 : \(cc1.a), \(cc1.b), \(cc1.e), \(cc1.f)")
print("cc1 : \(cc1.a), \(cc1.b), \(cc1.e), \(cc1.f)")
// 자식클래스간에 서로 공유는 불가능.
//print("cc1 : \(cc1.a), \(cc1.b), \(cc1.e), \(cc1.f), \(cc1.k)")
//cc1.fn_1()
//cc1.fn_2()
cc1.fn_1()
cc1.fn_2()
cc1.fn_5()
cc1.fn_6()

print("cc2 : \(cc2.a), \(cc2.b), \(cc2.e), \(cc2.k)")
// 자식클래스간에 서로 공유는 불가능.
print("cc2 : \(cc2.a), \(cc2.b), \(cc2.e), \(cc2.f), \(cc2.k)")
cc2.fn_1()
cc2.fn_2()
cc2.fn_5()
cc2.fn_8()
