//
//  TodoList.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/17.
//

struct TodoList{
    var items:String
    var itemsImageFile: String
    
    init(items: String, itemsImageFile: String) {
        self.items = items // 전역변수와 지역변수 차이를 알려주는것
        self.itemsImageFile = itemsImageFile
    }
}
