//
//  DeleteModel.swift
//  database_CRUD
//
//  Created by Hyun A Song on 2022/10/02.
//

import Foundation

class DeleteModel{
    var urlPath = "http://localhost:8080/ios/student_delete_ios.jsp"
    
    func insertItems(code: String, name : String, dept:String, phone : String) -> Bool{
        var result: Bool = true
        
        //url 주소 뒤에 붙던 조건을 따로 만들어주기
        let urlDelete = "?code=\(code)&name=\(name)&dept=\(dept)&phone=\(phone)"
        urlPath = urlPath + urlDelete
        
        //url 주소안에 한글 encoding : %가&나 이런식으로 퍼센트 인코딩
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: .default)
        
        //확인용
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Fail download data")
                result = false
            }else{
                print("Data is downloaded")
                result = true
            }
        }
        task.resume()
        return result
    }
}
