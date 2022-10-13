//
//  downloadItems.swift
//  JSONMovieList
//
//  Created by Hyun A Song on 2022/09/24.
//

import Foundation

func downLoadItems(){
let url = URL(string: "https://zeushahn.github.io/Test/images/.jpg")
let defaultSession = Foundation.URLSession(configuration: .default)

let task = defaultSession.dataTask(with: url!){(data, response, error) in
if error != nil{
print("Failed to download data")
}else{
print("Data is downloaded")
DispatchQueue.main.async {
self.imgDisplay.image = UIImage(data: data!)
}
/*
if let image = UIImage(data: data!){
if let data = image.jpegData(compressionQuality: 0.8){
let filename = self.getDocumentsDirectory().appendingPathComponent("copy.jpg")
try? data.write(to: filename)
print("Data is writed")
print(self.getDocumentsDirectory())
}
}*/
}
}
    task.resume()
}
