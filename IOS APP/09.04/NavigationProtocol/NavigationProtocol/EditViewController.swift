//
//  EditViewController.swift
//  wlfkf
//
//  Created by Hyun A Song on 2022/09/04.
//

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var lblOnOff: UILabel!
    
    @IBOutlet weak var swIsOn: UISwitch! // 동작이전에 상태를 나타내야하기 때문에
    
    @IBOutlet var lblColor: UIView!
    
    var textWayValue:String = ""
    var isOn: Bool = Message.isOn // 스위치 상태
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblWay.text = textWayValue
        tfMessage.text = Message.message
        
        swIsOn.isOn = isOn
        if isOn{
            lblOnOff.text = "On"
        }else{
            lblOnOff.text = "Off"
        }
    }
    
    
    @IBAction func btnDone(_ sender: UIButton) {
        Message.message = tfMessage.text!
        //눌렀을때 화면이 없어질 수 있도록
        Message.isOn = isOn
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


