//
//  JSONModel.swift
//  ServerJson_table
//
//  Created by Hyun A Song on 2022/09/18.
//

struct StudentJSON: Codable{ // Json에 있는 내용과 동일해야 인식가능함. decode 사용 가능하게 codable로 정의
    var code: String
    var phone: String
    var name: String
    var dept: String
}
