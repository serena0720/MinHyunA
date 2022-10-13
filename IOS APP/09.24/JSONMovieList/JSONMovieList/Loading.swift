//
//  Loading.swift
//  JSONMovieList
//
//  Created by Hyun A Song on 2022/09/24.
//

import Foundation

let url = URL(string: "https://zeushahn.github.io/Test/images/movie.jpg")
let defaultSession = Foundation.URLSession(configuration: .default)

let task = defaultSession.dataTask(with: url!){(data, response, error) in
    if error != nil{
        print("Failed to download data")
    }else{
        print("Data is downloaded")
        DispatchQueue.main.async {
            self.imgDisplay.image = UIImage(data: data!)
        }
    }
}
task.resume()
