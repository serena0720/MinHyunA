//
//  Todo.swift
//  SQL_SimpleTodoList
//
//  Created by Hyun A Song on 2022/10/01.
//

import Foundation

class Todo{ //자료구조 정리하고 init으로 정의
    var id : Int
    var content : String?
    
    init(id: Int, content: String? = nil) {
        self.id = id
        self.content = content
    }
}
