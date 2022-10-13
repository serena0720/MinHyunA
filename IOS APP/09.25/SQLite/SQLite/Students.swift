//
//  Students.swift
//  SQLite
//
//  Created by Hyun A Song on 2022/09/25.
//

import Foundation

class Students{ //자료구조 정리하고 init으로 정의
    var id : Int
    var name : String?
    var dept : String?
    var tel : String?
    
    init(id: Int, name: String? = nil, dept: String? = nil, tel: String? = nil) {
        self.id = id
        self.name = name
        self.dept = dept
        self.tel = tel
    }
}
