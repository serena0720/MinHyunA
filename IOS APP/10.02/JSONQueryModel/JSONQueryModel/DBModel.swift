//
//  DBModel.swift
//  JSONQueryModel
//
//  Created by Hyun A Song on 2022/10/02.
//

import Foundation

//table 모양과 동일하게 만듦
struct DBModel{
    var code: String
    var name: String
    var dept: String
    var phone: String
    
    init(code: String, name: String, dept: String, phone: String) {
        self.code = code
        self.name = name
        self.dept = dept
        self.phone = phone
    }
}
