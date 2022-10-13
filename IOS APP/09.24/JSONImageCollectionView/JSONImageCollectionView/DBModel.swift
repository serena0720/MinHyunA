//
//  DBModel.swift
//  JSONImageCollectionView
//
//  Created by Hyun A Song on 2022/09/24.
//

import Foundation
class DBModel: NSObject{ // 데이터 타입 중 가장 상위 타입 : NSObject
    // Properties // 실제 데이터가 들어오는 곳
    var qmovieImg: String
    var qmovieTitle : String
    
    
    // Constructor // 샏성자, 데이터를 받아오는 매개체
    init(qmovieImg: String, qmovieTitle: String){
        self.qmovieImg = qmovieImg
        self.qmovieTitle = qmovieTitle
    }
}
