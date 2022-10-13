//
//  StudentJSON.swift
//  SeverJSON_Picture
//
//  Created by Hyun A Song on 2022/09/24.
//

import Foundation
struct StudentJSON: Codable{ // Json에 있는 내용과 완전 동일해야 인식가능함. decode 사용 가능하게 codable로 정의

    var phone: String
    var name: String

}
