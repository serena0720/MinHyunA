//
//  ToDoList.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/04.
//

struct ToDoList{
    var items: String
    var itemsImageFile: String
    
    init(items:String, itemsImageFile:String){
        self.items = items
        //self는 상위 클래스, item은 현재 펑션안의 item을 말한다
        self.itemsImageFile = itemsImageFile
    }
}
