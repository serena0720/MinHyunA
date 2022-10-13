//
//  DBModel.swift
//  ServerJson_02
//
//  Created by Kenny on 2022/09/24.
//

import Foundation
class DBModel: NSObject{
    // Properties
    var scode: String
    var sname: String
    var sdept: String
    var sphone: String
    
    // Constructor
    init(scode: String, sname: String, sdept: String, sphone: String) {
        self.scode = scode
        self.sname = sname
        self.sdept = sdept
        self.sphone = sphone
    }
}
