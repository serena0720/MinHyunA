//
//  JsonModel.swift
//  ServerJsonImageList
//
//  Created by Kenny Hahn on 2022/06/01.
//

import Foundation

// For Json Decoding
struct ImageJSON: Codable{
    var image: String
    var title: String
}
