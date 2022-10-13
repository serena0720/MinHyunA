//
//  QueryModel.swift
//  ServerJson_01
//
//  Created by Kenny on 2022/09/18.
//

import Foundation

protocol QueryModelProtocol: AnyObject{
    func itemDownloaded(items: [DBModel])
}

class QueryModel{
    var delegate: QueryModelProtocol!
    let urlPath = "https://zeushahn.github.io/Test/ios/student.json"
    
    func downloadItems(){
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Failed to download data")
            }else{
                print("Data is downloaded")
                print(data!)
                self.parseJSON(data!)
            }
        }
        task.resume()
        
    }
    
    func parseJSON(_ data: Data){
        let decoder = JSONDecoder()
        var locations: [DBModel] = []
        do{
            let students = try decoder.decode([StudentJSON].self, from: data)
            for student in students{
                let query = DBModel(scode: student.code, sname: student.name, sdept: student.dept, sphone: student.phone)
                locations.append(query)
            }
            print(students.count)
        }catch let error{
            print("Fail : \(error.localizedDescription)")
        }
        
        DispatchQueue.main.async(execute: {() -> Void in
            self.delegate.itemDownloaded(items: locations)
        })
    }
    
    
}
