//
//  DetailViewController.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/17.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblItem: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var animalFly:String
        
        if Message.fly == "true"{
            animalFly = "날 수 있습니다."
        }else{
            animalFly = "날 수 없습니다."
        }
        lblItem.text = "이 동물의 이름은 \(Message.name)이며, \n분류는 \(Message.sort)이고 \(animalFly)"
        lblItem.numberOfLines = 2
        imgView.image = UIImage(named: Message.animalImage)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
