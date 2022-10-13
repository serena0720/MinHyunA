//
//  DBModel.swift
//  ServerJson_table
//
//  Created by Hyun A Song on 2022/09/18.
//

import Foundation

class DBModel: NSObject{ // 데이터 타입 중 가장 상위 타입 : NSObject
    // Properties
    var scode: String
    var sname : String
    var sdept : String
    var sphone : String
    
    // Constructor
    init(scode: String, sname: String, sdept:String, sphone:String){
        self.scode = scode
        self.sname = sname
        self.sdept = sdept
        self.sphone = sphone
    }
}
