//
//  ViewController.swift
//  ServerImage_01
//
//  Created by Kenny on 2022/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgDisplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnLoadImage1(_ sender: UIButton) {
       
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
            }
            
        }
        task.resume()
    }
    
    
    
    
    
    
} // End

