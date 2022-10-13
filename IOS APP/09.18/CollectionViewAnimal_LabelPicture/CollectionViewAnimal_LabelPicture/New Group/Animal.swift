//
//  Animal.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/17.
//

struct Animal{
    var name:String
    var animalImageFile: String
    var sort:String
    var fly:Bool
    
    init(name: String, animalImageFile: String, sort:String, fly:Bool) {
        self.name = name // 전역변수와 지역변수 차이를 알려주는것
        self.animalImageFile = animalImageFile
        self.sort = sort
        self.fly = fly
    }
}
