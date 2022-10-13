import Cocoa

class Stud{
    let name:String
    var jum = [0,0,0]{
        didSet{
            for i in jum{
                if i < 0 || i > 100{
                    jum = oldValue
                    print("점수 에러")
                }
            }
        }
    }
    
    init(_ name:String){
        self.name = name
    }
    var tot:Int{
        get{
        var res = 0
        for i in jum{
            res += i
        }
        return res
        }
    }
    var avg:Int{
        get{
        return tot/jum.count
        }
    }
    
    func ppp(){
        print("\(name)\t\(jum)\t\(tot)\t\(avg)")
    }
}

var st = Stud("정우성")
st.jum = [56,67,78]
st.ppp()
st.jum = [99,78,60]
st.ppp()
st.jum = [-1,101,78]
st.ppp()
