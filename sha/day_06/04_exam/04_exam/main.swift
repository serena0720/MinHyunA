//
//  main.swift
//  04_exam
//
//  Created by TJ on 2022/07/15.
//

import Foundation

// 숫자를 입력받아 합계, 평균, 최대, 최소를 구하는 프로그램을 구현하라.
//숫자 범위 1...100
// x 입력 시 프로그램 종료

var tot = 0
var m = 0
var avr = 0
var max = 0
var min = 100
while true{
    print("숫자를 입력하세요. x 입력 시 종료")
    print("입력 : ", terminator: "")
    var tt = readLine()!
    
    if tt == "x" {
        break
    }
    var no = Int(tt)!
    tot += no
    m += 1
    avr = tot / m
    if min > no{
        min = no  // 이 조건으로 계속 루프
    }
    if max < no{
        max = no  // 이 조건으로 계속 루프
    }
    }

    print("합계 : \(tot)")
    print("평균 : \(avr)")
    print("최대 : \(max)")
    print("최소 : \(min)")
