//
//  JSONModel.swift
//  database_CRUD
//
//  Created by Hyun A Song on 2022/10/02.
//

import Foundation

//Query의 이름과 동일하게 string
struct StudentJSON: Codable{
    var scode:String
    var sname:String
    var sdept:String
    var sphone:String
}
