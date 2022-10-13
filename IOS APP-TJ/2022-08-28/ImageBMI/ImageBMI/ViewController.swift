//
//  ViewController.swift
//  ImageBMI
//
//  Created by Kenny on 2022/06/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "bmi.png")
        lblResult.text?.removeAll()
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        let checkResult = fieldCheck()
        if checkResult {
            calcBMI()
        }else{
            errorAlert()
        }
    }
    
    func fieldCheck() -> Bool{
        if (tfHeight.text?.trimmingCharacters(in: .whitespacesAndNewlines))!.isEmpty || 
            (tfWeight.text?.trimmingCharacters(in: .whitespacesAndNewlines))!.isEmpty {
            return false
        }else{
            return true
        }
    }
    
    func errorAlert(){
        //alert 사용하기
        let alert = UIAlertController(title: "경고", message: "숫자를 입력하세요.", preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(actionAlert)
        present(alert, animated: true, completion: nil)
    }
    
    func calcBMI(){
        
        let calcHeight = Double(tfHeight.text!)! / 100
        let calcWeight = Double(tfWeight.text!)!
        
        let bmi = calcWeight / (calcHeight * calcHeight)
        
        var tempResult: String
        
        if bmi <= 18.4 {
            tempResult = "저체중"
            imgView.image = UIImage(named: "underweight.png")
        }else if bmi >= 18.5 && bmi <= 22.9{
            tempResult = "정상체중"
            imgView.image = UIImage(named: "normal.png")
        }else if bmi >= 23 && bmi <= 24.9{
            tempResult = "과체중"
            imgView.image = UIImage(named: "risk.png")
        }else if bmi >= 25 && bmi <= 29.9{
            tempResult = "비만"
            imgView.image = UIImage(named: "overweight.png")
        }else{
            tempResult = "고도비만"
            imgView.image = UIImage(named: "obese.png")
        }
        
        lblResult.text = "귀하의 bmi 지수는 \(round(bmi*100)/100)이고 \(tempResult) 입니다."
    }
    
}// ViewController

