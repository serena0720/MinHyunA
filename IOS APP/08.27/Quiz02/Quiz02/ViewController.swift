//
//  ViewController.swift
//  Quiz02
//
//  Created by Hyun A Song on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    
    @IBOutlet weak var tfNum2: UITextField!
    
    @IBOutlet weak var tfAddition: UITextField!
    
    @IBOutlet weak var tfSubtraction: UITextField!
    
    @IBOutlet weak var tfMultiuplication: UITextField!
    
    @IBOutlet weak var tfDivision: UITextField!
    
    @IBOutlet weak var tfDivisionRemainer: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //message 정리하기
        lblMessage.text?.removeAll()
        
        //결과부분 Read Only로 만들기. 입력불가능하게
        readOnly()
    }

    func readOnly(){
        tfAddition.isUserInteractionEnabled = false // true는 입력 가능
        tfSubtraction.isUserInteractionEnabled = false
        tfMultiuplication.isUserInteractionEnabled = false
        tfDivision.isUserInteractionEnabled = false
        tfDivisionRemainer.isUserInteractionEnabled = false
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기. 기본 제공 코드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnCalc(_ sender: UIButton) {
        guard let strNum1 = tfNum1.text else{return}
        guard let strNum2 = tfNum2.text else{return}
        
        let num1Check:Int = checkNil(str: strNum1)
        let num2Check:Int = checkNil(str: strNum2)
        
        if num1Check + num2Check != 2{
            lblMessage.text = "숫자를 입력하세요."
        }else{
            lblMessage.text = ""
            calculation(calcNum1: strNum1, calcNum2: strNum2)
            lblMessage.text = "계산이 완료 되었습니다."
        }
    }
    
    func calculation(calcNum1:String, calcNum2:String){
        let inNum1:Int = Int(calcNum1)!
        let inNum2:Int = Int(calcNum2)!
        
        tfAddition.text = String(inNum1 + inNum2)
        tfSubtraction.text = String(inNum1 - inNum2)
        tfMultiuplication.text = String(inNum1 * inNum2)
        tfDivision.text = String(inNum1 / inNum2)
        tfDivisionRemainer.text = String(inNum1 % inNum2)
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
    
}//ViewController

