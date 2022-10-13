//
//  ViewController.swift
//  doubleCalc
//
//  Created by Hyun A Song on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    
    @IBOutlet weak var num2: UITextField!
    
    @IBOutlet weak var calc: UIButton!
    
    @IBOutlet weak var addition: UITextField!
    
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        message.text?.removeAll()
        readonly()
    }
    func readonly(){
        addition.isUserInteractionEnabled = false
        message.isUserInteractionEnabled = false
    }

    // 아무곳이나 눌러 softkeyboard 지우기. 기본 제공 코드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btncalc(_ sender: UIButton) {
        guard let strnum1 = num1.text else {return}
        guard let strnum2 = num2.text else {return}
        
        let num1Check:Int = checkNil(str : strnum1)
        let num2Check:Int = checkNil(str : strnum2)
        
        if num1Check + num2Check != 2{
            message.text = "숫자를 입력하세요."
        }else{
            message.text = ""
            calculation(calcNum1: strnum1, calcNum2: strnum2)        }
    }
    
    func calculation(calcNum1:String, calcNum2:String){
        let inNum1:Int = Int(calcNum1)!
        let inNum2:Int = Int(calcNum2)!
        
        if inNum1 % 2 == 0 , inNum2 % 2 == 0{
            addition.text = String(inNum1 + inNum2)
        }else{
            addition.text = ""
            message.text = "올바른 숫자가 아닙니다."
        }
    }
    
    func checkNil(str:String)-> Int{
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines) //앞뒤 빈공간을 지워주는것.
        if check.isEmpty{
            return 0
        }
        else{
            return 1
        }
    }
}
