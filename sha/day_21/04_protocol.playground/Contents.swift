import Cocoa

//프로토콜은 값을 가질 수 없다. 즉 정의는 불가능 하고 선언만 가능.
protocol AAA{
    //var a = 10
    /*
    var b:Int{
        get{
            print("AAA getA")
            return 20
        }
    }
     */
    var c:Int{get}
    var d:Int{get set}
    
    /*
    func fn_1(){
        print("AAA fn_1()")
    }
     */
    func fn_2()
}

//var a1 = AAA() : 정의된 값이 없기 때문에 단독 호출 불가.


//protocol을 받으려면 선언한 모든 것을 정의해줘야함.
class Child:AAA{
    var c: Int = 10
    
    var d: Int = 20
    
    func fn_2() {
        print("Child fn_2")
    }
}

protocol BBB{
        var d:Int{get}
        var e:Int{get set}
        
        func fn_2()
        
        func fn_3()
    }

class Par1{
    var e: Int = 9999
    
    func fn_2() {
        print("Child fn_2")
    }
}

class Par2{
    
}

//프로토콜을 실체가 없기 때문에 동시 상속이 가능함, 클래스도 동시 상속 가능. 단 단일 클래스만 가능
//class Child:Par1, Par2, AAA, BBB{ : 불가능.
class Child2:Par1, AAA, BBB{
    //protocol의 메소드나 프로퍼티는 override 를 기재하지 않음.
    var c: Int = 10
    
    var d: Int = 20
    
    /* 부모 클래스로 내용을 옮길 수도 있다.
    var e: Int = 30
    
    func fn_2() {
        print("Child fn_2")
    }
     */
    
    func fn_3() {
        print("Child fn_3")
    }
}

var a2 = Child2()
//중간에 대입도 가능
a2.c = 1111
a2.d = 2222
a2.e = 3333
print("a2:\(a2.c), \(a2.d), \(a2.e)")
a2.fn_2()
a2.fn_3()

var a3:AAA = a2
//a3.c = 3333 : get만 있기 때문에 안됨.
a3.d = 4444
print("a3:\(a3.c), \(a3.d)")
//print("a3:\(a3.c), \(a3.d), \(a3.e)") : 부모클래스이기 때문에 범위가 다르다.
a3.fn_2()
//a3.fn_3()

var bb:BBB = a2
//bb.c = 1234
//bb.d = 5678 : set이 없음
bb.e = 4321
//print("bb:\(bb.c), \(bb.d), \(bb.e)") : c 호출조차 불가
print("bb:, \(bb.d), \(bb.e)")
bb.fn_2()
bb.fn_3()
