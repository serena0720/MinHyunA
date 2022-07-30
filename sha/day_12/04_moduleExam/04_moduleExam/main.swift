//
//  main.swift
//  04_moduleExam
//
//  Created by Hyun A Song on 2022/07/29.
//

import Foundation

func exam(){
    let rr1 = inputExam()
    //print(rr1)
    let rr2 = calcExam(rr1.jum) //총점 평균을 구해주는 과정
    //print(rr2)
    pppExam(rr1.name, rr1.jum, rr2.0, rr2.1)
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
    return(tot, tot/jum.count)
}

func pppExam(_ name:String,_ jum:[Int],_ tot:Int,_ avg:Int){
    var ttt = name+"\t"
    for i in jum{
        ttt += "\(i)\t"
    }
    ttt += "\(tot)\t\(avg)"
    print(ttt)
}

exam()

//print(calcExam([67,78,91])) //이것의 값을 볼 수 있다
//pppExam("aaa", [56,67,78], 230, 81)
