//
//  Students.swift
//  SQLite
//
//  Created by Kenny on 2022/09/25.
//

import Foundation

class Students{
    var id: Int
    var name: String?
    var dept: String?
    var tel: String?

    init(id: Int, name: String?, dept: String?, tel: String?) {
        self.id = id
        self.name = name
        self.dept = dept
        self.tel = tel
    }
    
}
