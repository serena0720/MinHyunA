//
//  main.swift
//  04_avg
//
//  Created by lee on 2022/07/15.
//

import Foundation

/// 숫자를 입력받아 합계, 평균, 최대, 최소를 구하는 프로그램을 구현하세요

// 숫자 범위 :  1 ~ 100

/// x 입력시 프로그램 종료


var tot = 0
var cnt = 0
var min = 100
var max = 0

while true {
    
    print("숫자를 입력하세요 x 입력시 종료")
    print("입력:", terminator: "")
    
    var tt = readLine()!
    
    if tt == "x"{
        break
    }
    
    var no = Int(tt)!
    tot += no
    cnt += 1
    
    if min > no {
        min = no
    }
    
    if max < no {
        max = no
    }
}

print("합계 : \(tot), 평균 : \(tot/cnt), 최소 : \(min), 최대 : \(max)")

