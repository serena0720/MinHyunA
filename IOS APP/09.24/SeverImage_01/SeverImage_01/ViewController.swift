//
//  ViewController.swift
//  SeverImage_01
//
//  Created by Hyun A Song on 2022/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDisplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoadImage1(_ sender: UIButton) { // 인터넷에 있는 사진을 불러오기
        /*
        let url = URL(string: "https://zeushahn.github.io/Test/images/dog.jpg")
        let data = try? Data(contentsOf: url!)
        imgDisplay.image = UIImage(data: data!)
         */
        let url = URL(string: "https://zeushahn.github.io/Test/images/dog.jpg")
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
    }
    
    @IBAction func btnLoadImage2(_ sender: UIButton) {
            downLoadItems()
    }
                             
    func downLoadItems(){
            let url = URL(string: "https://zeushahn.github.io/Test/images/dog2.jpg")
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
    /*
    func getDocumentsDirectory() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
     */
}

