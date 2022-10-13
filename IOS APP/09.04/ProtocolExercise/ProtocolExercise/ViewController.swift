//
//  ViewController.swift
//  wlfkf
//
//  Created by Hyun A Song on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    

    
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    
    var isOn = true // 수정화면의 스위치 모양
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = imgOn

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
        editViewController.textMessage = tfMessage.text!
        editViewController.delegate = self // 하단의 editdeldgate /message 내용이 들어가게됨. 이걸로 서로 공유하게 됨
        editViewController.isOn = isOn // 하단의 isOn 내용이 들어가게됨.
        
    }
    
}//ViewController

extension ViewController:EditDelegate{
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        tfMessage.text = message
    }
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn{
            imgView.image = imgOn
            self.isOn = true // 함수안에도 isON 클래스에도 isOn이 있기 때문에 self
        }else{
            imgView.image = imgOff
            self.isOn = false
        }
    }
    
    
}
