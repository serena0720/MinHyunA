//
//  DBModel.swift
//  ServerJsonImageList
//
//  Created by Kenny Hahn on 2022/06/01.
//

import Foundation

class DBModel{
   
    // Properties
    var imageName: String
    var title: String

    // Constructor with scode, sname, sdept, sphone
    init(imageName: String, title: String){
        self.imageName = imageName
        self.title = title
    }
    
}
