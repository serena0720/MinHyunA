import Cocoa

class Par{
    var a = 10
    var b:Int{
        get{
            print("부모 getB()")
            return 20
        }
    }
    var c:Int{
        get{
            print("부모 getC()")
            return 30
        }
    }
    
    func fn_1(){
        print("부모 fn_1()")
    }
    func fn_2(){
        print("부모 fn_2()")
    }
}

class Child:Par{
    var e = 5555
    override var c:Int{
        get{
            print("자식 getC()")
            return 3333
        }
    }
    
    var d:Int{
        get{
            print("자식 getD()")
            return 4444
        }
    }
    
    override func fn_1(){
        print("자식 fn_1()")
    }
    func fn_3(){
        print("자식 fn_3()")
    }
}

var pp:Par = Par()
var pc:Par = Child()
// var pc:Child = Par() : 부모가 더 작기 떄문에 자식->부모로 못감
var cc:Child = Child()

print("pp-----------------")
print("\(pp.a), \(pp.b), \(pp.c)")
//print("\(pp.a), \(pp.b), \(pp.c), \(pp.d), \(pp.e)") : 부모가 더 작기 떄문에 자식->부모로 못감
pp.fn_1()
pp.fn_2()
// pp.fn_3() : 부모가 더 작기 떄문에 자식->부모로 못감

// 자식으로 생성해서 부모것을 불러도 override된 값이 출력됨.
print("pc-----------------")
print("\(pc.a), \(pc.b), \(pc.c)")
//print("\(pc.d), \(pc.e)")
pc.fn_1()
pc.fn_2()
//pc.fn_3()

//자식클래스 범위가 가장 넓기 때문에 모든 것이 다 호출 가능.
print("cc-----------------")
cc.e = 5050 // 대입 가능
print("\(cc.a), \(cc.b), \(cc.c)")
print("\(cc.d), \(cc.e)")
cc.fn_1()
cc.fn_2()
cc.fn_3()

//cc를 pcc에 대입 : 자식클래스를 부모클래스로 바꿔버림 (upcasting 묵시적형변환)
var pcc:Par = cc
print("pcc-----------------")
cc.e = 5050 // 대입 가능
print("\(pcc.a), \(pcc.b), \(pcc.c)")
//print("\(pcc.d), \(pcc.e)") : 자식클래스가 부모클래스로 바뀌기 때문에 불가능해짐.
pcc.fn_1()
pcc.fn_2()
//pcc.fn_3()

//downcasting : 부모클래스로 바꾼 자식클래스를 다시 자식클래스로 돌리려면 강제로 해야함
var cpcc:Child = pcc as! Child // as! down casting : 명시적 형변환
print("cpcc-----------------")
print("\(cpcc.a), \(cpcc.b), \(cpcc.c)")
print("\(cpcc.d), \(cpcc.e)")
//cc.e = 5050 -> 대입했던 값이 숨겨져있다가 다시 나타남
cpcc.fn_1()
cpcc.fn_2()
cpcc.fn_3()

//var cpp:Child = pp as! Child : 원래 부모이던 클래스를 억지로 자식으로 바꿀 수 없다. 즉 as!코드는 항상 신뢰할 수 없다.

//is는 형변환이 가능한지 아닌지를 묻는것.
print(pp is Par)
print(pp is Child)
print(cc is Par)
print(cc is Child)

