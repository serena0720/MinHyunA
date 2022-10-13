//
//  ViewController.swift
//  wlfkf
//
//  Created by Hyun A Song on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    let light = ["lamp_on.png","lamp_off.png","lamp_red.png"]
    var color = 0
    var lightColor = UIImage(named: light[0])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var color = 0
        imgView.image = lightColor

    }//첫화면일뿐
    
    override func viewWillAppear(_ animated: Bool) {
        
        if Light{
            imgView.image = imgOn
        }else{
            imgView.image = imgOff
        }
    }// 호출
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        
        if segue.identifier == "editButton"{
            editViewController.textWayValue = "Segue: Use Button!"
        }else{
            editViewController.textWayValue = "Segue: Use BarButton!"
        }
        Message.message = tfMessage.text!
    
    //segue의 이름별로 기능을 나누기 위해 정의
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController//EditViewController라는 class에 editViewController라는 변수를 생성
        if segue.identifier == "editButton"{
            editViewController.textWayValue = "Segue: Use Button!"
        }else{
            editViewController.textWayValue = "Segue: Use BarButton!"
        }
    }
    }


}//ViewController

