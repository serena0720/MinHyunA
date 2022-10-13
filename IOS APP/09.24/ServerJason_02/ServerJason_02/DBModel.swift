//
//  DBModel.swift
//  ServerJason_02
//
//  Created by Hyun A Song on 2022/09/24.
//

import Foundation

class DBModel: NSObject{ // 데이터 타입 중 가장 상위 타입 : NSObject
    // Properties // 실제 데이터가 들어오는 곳
    var scode: String
    var sname : String
    var sdept : String
    var sphone : String
    
    // Constructor // 샏성자, 데이터를 받아오는 매개체
    init(scode: String, sname: String, sdept:String, sphone:String){
        self.scode = scode
        self.sname = sname
        self.sdept = sdept
        self.sphone = sphone
    }
}
