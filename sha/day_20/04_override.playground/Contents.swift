import Cocoa

class Grand{
    func fn_g(){
        print("조부모 fn_g() 실행")
    }
}

class Par:Grand{
    var a = 10
    var b:Int{
        get{
            print("부모 getB() 실행")
            return 20
        }
    }
    var c:Int{
        get{
            print("부모 getC() 실행")
            return 30
        }
        set{
            print("부모 setC() 실행 \(newValue)")
        }
    }
    func fn_1(){
        print("부모 fn_1() 실행")
    }
    //final은 let과 같은 기능. override 불가
    final func fn_2(){
        print("부모 fn_2() 실행")
    }
    func fn_3(){
        print("부모 fn_3() 실행")
    }
    
    override func fn_g(){
        print("부모 fn_g() 실행")
    }
}

class Child:Par{
    //멤버변수 override 불가
    //override var a = 1111
    //var a = 1111
    
    //함수는 override는 가능. 재적립.
    override func fn_1(){
        print("자식 fn_1() 실행")
    }
    //단 함수의 생김새는 똑같아야함
    //get만 사용했다면 똑같이 get만 사용 가능
    override var b:Int{
        get{
            print("자식 getB() 실행")
            return 30
        }
    }
    override var c:Int{
        get{
            print("자식 getC() 실행")
            return 30
        }
        set{
            print("자식 setC() 실행 \(newValue)")
        }
    }
    
    /* final된 메소드는 override 및 수정 불가
    final func fn_2(){
        print("부모 fn_2() 실행")
    }
    */
    
    func fn_tot(){
        print("자식 fn_tot() 시작---------")
        super.fn_1//자식클래스가 아닌 부모클래스의 값을 호출
        //super : 부모 접근자 -> 클래스 정의부에서만 사용
        fn_1()
        fn_2()
        fn_3()
        print("자식 fn_tot() 끝---------")
        
        super.fn_g() //한단계 위의 상위클래스 값을 보여줌.
        //한단계 위의 상위클래스 밖의 값은 단절. 새로이 적립된 값만 받을 수 있음
    }
}

var cc = Child()
cc.c = 333
print("cc: \(cc.a), \(cc.b), \(cc.c)")
cc.fn_1()
cc.fn_2()
cc.fn_3()
cc.fn_tot()
cc.fn_g()
