//
//  EditViewController.swift
//  wlfkf
//
//  Created by Hyun A Song on 2022/09/04.
//

import UIKit

class EditViewController: UIViewController {

    
    @IBOutlet weak var lblWay: UILabel!
    
    @IBOutlet weak var lblColor: UILabel!
    
    @IBOutlet weak var lblOnOff: UILabel!
    
    @IBOutlet weak var swIsOn: UISwitch! // 동작이전에 상태를 나타내야하기 때문에
    
    //viewcontrol에서 넣어주는 내용

    var delegate: EditDelegate? // viewcontrol의 값
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        swIsOn.isOn = isOn
        if isOn{
            lblOnOff.text = "On"
        }else{
            lblOnOff.text = "Off"
        }
    }
    
    
    @IBAction func btnDone(_ sender: UIButton) {
        delegate?.didMessageEditDone(self, message: tfMessage.text!) // self/숨어있는 다른 클래스의 내용을 실행시킴
        delegate?.didImageOnOffDone(self, isOn: isOn) // self/숨어있는 다른 클래스의 내용을 실행시킴
        
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swOff(_ sender: UISwitch) {
        if sender.isOn{
            isOn = true
            lblOnOff.text = "On"
        }else{
            isOn = false
            lblOnOff.text = "Off"
        }
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


