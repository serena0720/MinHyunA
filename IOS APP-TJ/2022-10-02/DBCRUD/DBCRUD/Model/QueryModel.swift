//
//  QueryModel.swift
//  DBCRUD
//
//  Created by Kenny on 2022/10/02.
//

import Foundation

protocol QueryModelProtocol: AnyObject{
    func itemDownloaded(items: [DBModel])
}


class QueryModel{
    var delegate: QueryModelProtocol!
    let urlPath = "http://localhost:8080/ios/student_query_ios.jsp"
    
    func downloadItems(){
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: .default)
        
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
                let query = DBModel(scode: student.scode, sname: student.sname, sdept: student.sdept, sphone: student.sphone)
                locations.append(query)
                
            }
        }catch let error{
            print("Fail : \(error.localizedDescription)")
        }
        
        DispatchQueue.main.async(execute: {() -> Void in
            self.delegate.itemDownloaded(items: locations)
        })
    }
    
} // End
