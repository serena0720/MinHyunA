import Cocoa

func numChk(no:Int = 2, _ arr:Int...){
    if arr.count == 0{
        print("1개 이상 숫자를 입력하세요")
        return;
    }
    print("계산 어쩌구 저쩌구")
}

numChk(44,55,66,77,88)
numChk(no:3, 44,55,66,77,88)
numChk()
numChk(no:3)
//numChk(no:3, [] )
