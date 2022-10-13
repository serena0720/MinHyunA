//
//  QueryModel.swift
//  JSONImageCollectionView
//
//  Created by Hyun A Song on 2022/09/24.
//

import Foundation

protocol QueryModelProtocol : AnyObject{
    func itemDownloaded(items: [DBModel]) //TableController가 실행하고 DBModel에서 정보를 갖고오는것을 정의만 하는게 지금 프로토콜
}

class QueryModel{
    var delegate: QueryModelProtocol!
    let urlPath = "https://zeushahn.github.io/Test/ios/movies.json" // git hub는 이런식으로 작성해야함
    //.jsp 가 엑셀처럼 데이터를 정리해놓은 타입
    
    func downloadItems(){
        //네트워트 연결 오류 있는 지 체크
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)//url에 여러사람이 접근할 수 있기 때문에 연결하는 방법 정의
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in // 세션을 통해 접근하면 정보가 불안정하게 접근 가능 즉 방법이 여러개기때문에 closer 사용하여 정의
            if error != nil{
                print("Failed to download data")
            }else{
                print("Data is downloaded")
                print(data!)
                
                //타입을 바꾸는 것을 타싱한다고 함
                self.paresJSON(data!) // 데이터 타입을 바꿔서 출력
            }
        }
        task.resume() // task 실행
        
    }
    
    //갖고온 제이슨의 내용을 우리가 만든 DBModel로 바꾸는것
    func paresJSON(_ data:Data){ // data를 정의한 DBModel 클래스의 모양으로 바꾸기
        let decoder = JSONDecoder()// decoder방식 : 압축된 파일을 푸는것 , endode : 여러 파일을 압축하는 것
        var locations: [DBModel] = [] // 반복 불러서 여기에 다 모으자
        do{//전달받은 파일에 문제가 있을 시 확인하여 오류 방지
            let movies = try decoder.decode([MovieJSON].self, from:data) //정의한 StudentJSON의 내용과 동일한가 체크하고 내용 넣기
            for movie in movies {
                let query = DBModel(qmovieImg: movie.image, qmovieTitle: movie.title)
                locations.append(query) // 받은 데이터를 쌓기
            }
            print(movies.count)
        }catch let error{
            print("Fail : \(error.localizedDescription)") // localizedescription : 언어 자동 맞춤
        }
        
        DispatchQueue.main.async(execute: {() -> Void in // return 없는 async // model에서 실행하라고 시키는거
            self.delegate.itemDownloaded(items: locations) // locations에 다 넣은 걸 가져라가// itemdownload에 넣어 주는거
        })
    }
}
