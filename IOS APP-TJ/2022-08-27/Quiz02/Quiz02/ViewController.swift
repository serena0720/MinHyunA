//
//  ViewController.swift
//  Quiz02
//
//  Created by TJ on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    
    @IBOutlet weak var tfAddition: UITextField!
    @IBOutlet weak var tfSubtraction: UITextField!
    @IBOutlet weak var tfMultiuplication: UITextField!
    @IBOutlet weak var tfDivisionQuotient: UITextField!
    @IBOutlet weak var tfDivisionRemainder: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Message 정리하기
        lblMessage.text?.removeAll()
        
        // 결과부분 Read Only로 만들기
        readOnly()
        
    }

    func readOnly(){
        tfAddition.isUserInteractionEnabled = false
        tfSubtraction.isUserInteractionEnabled = false
        tfMultiuplication.isUserInteractionEnabled = false
        tfDivisionQuotient.isUserInteractionEnabled = false
        tfDivisionRemainder.isUserInteractionEnabled = false
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnCalc(_ sender: UIButton) {
        guard let strNum1 = tfNum1.text else {return}
        guard let strNum2 = tfNum2.text else {return}
        
        let num1Check: Int = checkNil(str: strNum1)
        let num2Check: Int = checkNil(str: strNum2)
        
        if num1Check + num2Check != 2{
            lblMessage.text = "숫자를 입력하세요!"
        }else{
            lblMessage.text = ""
            calculation(calcNum1: strNum1, calcNum2: strNum2)
            lblMessage.text = "계산이 완료 되었습니다."
        }
    }
    
    func calculation(calcNum1: String, calcNum2: String){
        let intNum1: Int = Int(calcNum1)!
        let intNum2: Int = Int(calcNum2)!
        
        tfAddition.text = String(intNum1 + intNum2)
        tfSubtraction.text = String(intNum1 - intNum2)
        tfMultiuplication.text = String(intNum1 * intNum2)
        tfDivisionQuotient.text = String(intNum1 / intNum2)
        tfDivisionRemainder.text = String(intNum1 % intNum2)
        
    }
    
    
    func checkNil(str: String) -> Int{
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return 0
        }else{
            return 1
        }
    }

} // ViewController



