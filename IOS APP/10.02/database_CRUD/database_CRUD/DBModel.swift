//
//  DBModel.swift
//  database_CRUD
//
//  Created by Hyun A Song on 2022/10/02.
//

import Foundation

//table 모양과 동일하게 만듦 
struct DBModel{
    var scode: String
    var sname: String
    var sdept: String
    var sphone: String
    
    init(scode: String, sname: String, sdept: String, sphone: String) {
        self.scode = scode
        self.sname = sname
        self.sdept = sdept
        self.sphone = sphone
    }
}
