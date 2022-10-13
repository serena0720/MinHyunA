//
//  QueryModel.swift
//  database_CRUD
//
//  Created by Hyun A Song on 2022/10/02.
//

import Foundation

//DB도 켜져 있고, Tomcat 서버도 켜져 있어야함!!!


protocol QueryModelProtocol: AnyObject{
    func itemDownloaded(items:[DBModel])
}

class QueryModel{
    var delegate: QueryModelProtocol!
    let urlPath = "http://localhost:8080/ios/student_query_ios.jsp"
    
    func downloadItems(){
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: .default)
        
        //확인용
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Fail download data")
            }else{
                print("Data is downloaded")
                self.parseJSON(data!)
            }
        }
        task.resume()
    }
    //갖고온 제이슨의 내용을 우리가 만든 DBModel로 바꾸는것
    func parseJSON(_ data: Data){
        let decoder = JSONDecoder()
        var locaions: [DBModel] = []
        do{
            //나한테 들어온 여러줄의 데이터를 studentJSON 모양으로 바꿔줌
            let students = try decoder.decode([StudentJSON].self, from: data)
            //그 중 한줄씩 배열모양으로 바꿔서 넣음
            for student in students {
                let query = DBModel(scode: student.scode, sname: student.sname, sdept: student.sdept, sphone: student.sphone)
            //이를 locaion에 넣음
                locaions.append(query)
            }
        }catch let error{
            print("Fail : \(error.localizedDescription)")
        }
        DispatchQueue.main.async(execute: {() -> Void in
            self.delegate.itemDownloaded(items: locaions)
        })
    }
}
