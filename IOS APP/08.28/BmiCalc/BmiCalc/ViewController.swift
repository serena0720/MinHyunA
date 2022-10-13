//
//  ViewController.swift
//  BmiCalc
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfHigh: UITextField!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var btnCalc: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imgBmi: UIImageView!
    
    var bmiImg = ["bmi.png","underweight.png","normal.png","risk.png","overweight.png","obese.png"]
    var bminum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImg()
        lblResult.text?.removeAll()
    }
    
    func displayImg(){
        imgBmi.image = UIImage(named: bmiImg[bminum])
    }
    // 아무곳이나 눌러 softkeyboard 지우기. 기본 제공 코드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func calculation(_ sender: UIButton) {
        guard let strnum1 = tfHigh.text else {return}
        guard let strnum2 = tfWeight.text else {return}
        
        let num1Check:Int = checkNil(str : strnum1)
        let num2Check:Int = checkNil(str : strnum2)
    
        }
        if num1Check + num2Check != 2{
            lblResult.text = "숫자를 입력하세요."
        }else{
            lblResult.text = ""
      }
        calculation()
        print()
    }
    
    var result:Double = 0.0
    var standard:String = ""
    
    //계산식
    func calculation(){
        let inNum1 = Double(tfHigh.text!)! / 100
        let inNum2 = Double(tfWeight.text!)!
        let result = Double((inNum2 / inNum1 * inNum1) * 100 / 100)
        if result < 18.5 {
            standard = "저체중"
            bminum = 1
        }else if result < 23.0 && result >= 18.5 {
            standard = "정상체중"
            bminum = 2
        }else if result < 25.0 && result >= 23{
            standard = "과체중"
            bminum = 3
        }else if result < 30.0 && result >= 25.0{
            standard = "비만"
            bminum = 4
        }else if result >= 30.0 {
            standard = "고도비만"
            bminum = 5
        }
        print()
    }

    func print(){
        lblResult.text = "귀하의 BMI 지수는 \(result)이고 \(standard)입니다."
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

