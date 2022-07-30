//
//  main.swift
//  05_moduleExam
//
//  Created by lee on 2022/07/29.
//

import Foundation

func exam(){
    let rr1 = inputExam()
    //print(rr1)
    let rr2 = calcExam(rr1.jum)
    //print(rr2)
    pppExam(rr1.name,rr1.jum,rr2.0,rr2.1)
}

func inputExam()->(name:String, jum:[Int]){
    print("이름:", terminator: "")
    let name = readLine()!
    print("국어:", terminator: "")
    let kor = Int(readLine()!)!
    print("영어:", terminator: "")
    let eng = Int(readLine()!)!
    print("수학:", terminator: "")
    let mat = Int(readLine()!)!
    
    return (name,[kor,eng,mat])
    
}

func calcExam(_ jum:[Int])->(Int, Int){
    var tot = 0
    for i in jum{
        tot += i
    }
    return (tot, tot/jum.count)
}


func pppExam(_ name:String, _ jum:[Int], _ tot:Int, _ avg:Int){
    var ttt = name+"\t"
    for i in jum{
        ttt += "\(i)\t"
    }
    ttt += "\(tot)\t\(avg)"
    print(ttt)
}

//exam()

//print(calcExam([67,78,91]))
//pppExam("aaa",[56,67,78],230,81)



/*
 짝수의 합계, 평균을 출력하는 함수를 구현하세요
 
 x 입력시 숫자 입력 종료
 
 입력부
 연산부
 출력부 나누어 실행
 
 even()   ---> 합계:?? , 평균:??

*/

func even(){
    let r1 = evInput()
    //print(r1)
    let r2 = evCalc(r1)
    //print(r2)
    evPPP(r2)
}

func evInput()->[Int]{
    var res:[Int] = []
    print("숫자입력 x 입력시 종료")
    while true {
        
        print("입력:", terminator: "")
        let nn = readLine()!
        if nn == "x"{
            break
        }
        res.append(Int(nn)!)
    }
    
    return res
}
func evCalc(_ arr:[Int])->(Int,Int){
    var tot = 0
    var cnt = 0
    for i in arr{
        if i%2==0{
            tot += i
            cnt += 1
        }
    }
    return (tot, tot/cnt)
}

func evPPP(_ nums:(Int,Int)){
    print("합계:\(nums.0) , 평균:\(nums.1)")
}
even()
