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
    var lightColor = UIImage(named: light[color])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var color = 0

    }//첫화면일뿐
    
    //segue의 이름별로 기능을 나누기 위해 정의
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        //EditViewController라는 class에 editViewController라는 변수를 생성
        
        if segue.identifier == "editButton"{
            editViewController.textWayValue = "Segue: Use Button!"
        }else{
            editViewController.textWayValue = "Segue: Use BarButton!"
        }

        editViewController.color = color // 하단의 isOn 내용이 들어가게됨.
        
    }
    
}//ViewController

    
func didImageOnOffDone(_ controller: EditViewController, color:Int) {
        if color == 0{
            imgView.image =
            self.isOn = true // 함수안에도 isON 클래스에도 isOn이 있기 때문에 self
        }else if color == 1{
            imgView.image = imgOff
            self.isOn = false
        }else if color == 2{
            
    }
    
    
}
