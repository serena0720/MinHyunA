//
//  TodoList.swift
//  SQLiteSimpleTodoList
//
//  Created by Kenny Hahn on 2022/05/31.
//

import Foundation

struct TodoList{
    var id: Int
    var contents: String?
    
    init(id: Int, contents: String?){
        self.id = id
        self.contents = contents
    }
}
