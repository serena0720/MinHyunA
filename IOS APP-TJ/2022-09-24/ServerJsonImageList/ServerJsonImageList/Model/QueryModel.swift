//
//  QueryModel.swift
//  ServerJsonImageList
//
//  Created by Kenny Hahn on 2022/06/01.
//

import Foundation

protocol QueryModelProtocol: AnyObject {
    func itemDownloaded(items: [DBModel])
}

class QueryModel{
    
    var delegate: QueryModelProtocol!
    let urlPath = "https://zeushahn.github.io/Test/ios/movies.json"
    
    func downloadItems(){
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, respose, error) in
            if error != nil{
                print("Failed to download data")
            }else{
                print("Data is downloaded")
                self.parseJSON(data!)
            }
        }
        task.resume()
    }
    
    func parseJSON(_ data: Data){
//        *** Json to String ***
//        let str = String(decoding: data, as: UTF8.self)
//        print(str)
        
        let decoder = JSONDecoder()
        var locations: [DBModel] = []
        do{
            let images = try decoder.decode([ImageJSON].self, from: data)
            for image in images{
                let query = DBModel(imageName: image.image, title: image.title)
                locations.append(query)
//                print(locations)
            }
//          *** Fetch count ***
            print(images.count)
            
        }catch let error{
            print("Fail : \(error.localizedDescription)")
        }
        
        DispatchQueue.main.async(execute: {() -> Void in
            self.delegate.itemDownloaded(items: locations)
        })
    }
    
} // JsonModel

