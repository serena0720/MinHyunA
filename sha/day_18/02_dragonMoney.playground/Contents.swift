import Cocoa

/*
    아빠가 월급을 받아오게 되면, 어떻게 수정할 것인가
    단, 자녀가 월급을 받아오려 하면 : 건강하게만 자라다오 --> 메세지만 호출
    아빠가 용돈을 받아오려 하면 : 이사람이!! --> 메세지만 호출
 */

class Child{
    static var mom = 100
    static var dad = 0
    var name:String
    var myMoney = 0
    
    init(_ name:String){
        self.name = name
    }
    
    var money:Int=0{
        didSet{
            if name == "아빠"{
                print("이사람이!")
                return
            }
            myMoney += money
            Child.mom -= money
            print("\(name) : \(money) (\(myMoney))")
            print("\t잔액 : \(Child.mom)")
        }
    }
    
    var pay:Int=0{
        didSet{
            if name != "아빠"{
                print("\(name) 건강하게만 자라다오")
                return
            }
            myMoney += pay
            Child.mom += pay
            print("\(name) : \(money) (\(myMoney))")
            print("\t잔액 : \(Child.mom)")
        }
    }
}

let son = Child("아들")
let daughter = Child("딸")
let dad = Child("아빠")

son.money = 15
daughter.money = 14
daughter.money = 9
dad.pay = 100
son.money = 11
son.money = 13
daughter.money = 19
son.pay = 50
daughter.pay = 50
dad.money = 20
print(Child.mom)
