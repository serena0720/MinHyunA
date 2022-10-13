//
//  DBModel.swift
//  SeverJSON_Picture
//
//  Created by Hyun A Song on 2022/09/24.
//

import Foundation

class DBModel: NSObject{ // 데이터 타입 중 가장 상위 타입 : NSObject
    // Properties // 실제 데이터가 들어오는 곳

    var sname : String

    var sphone : String
    
    // Constructor // 샏성자, 데이터를 받아오는 매개체
    init(sname: String, sphone:String){

        self.sname = sname

        self.sphone = sphone
    }
}
