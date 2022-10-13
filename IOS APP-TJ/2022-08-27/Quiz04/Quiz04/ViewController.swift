//
//  ViewController.swift
//  Quiz04
//
//  Created by TJ on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSubject: UILabel!
    @IBOutlet weak var tfScore: UITextField!
    @IBOutlet weak var lblTotal: UILabel! // 총점
    @IBOutlet weak var lblAverage: UILabel! // 평균
    @IBOutlet weak var lblKorean: UILabel! // 국어Summary
    @IBOutlet weak var lblEnglish: UILabel! // 영어 Summary
    @IBOutlet weak var lblMathematics: UILabel! // 수학 Summary
    @IBOutlet weak var lblMessage: UILabel! // Message
    
    
    var subjectCount = 0 // 과목별 순서
    var score: [Int] = [0,0,0] // 과목별 점수
    var subjectTitle: [String] = ["국어점수","영어점수","수학점수","요약"]
    var averageScore: Double = 0 // 평균

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSubject.text = subjectTitle[subjectCount]
        lblTotal.text = ""
        lblAverage.text = ""
        lblKorean.text = ""
        lblEnglish.text = ""
        lblMathematics.text = ""
        lblMessage.text = ""
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        subjectCount += 1
        
        switch subjectCount{
        case 1: // 영어점수 준비, 국어점수 계산
            let numCheck = checkNil(str: tfScore.text!)
            if numCheck == 1{
                lblSubject.text = subjectTitle[subjectCount]
                score[0] = Int(tfScore.text!)!
                tfScore.text = ""
                lblMessage.text = ""
            }else{
                lblMessage.text = "숫자를 입력하세요!"
                subjectCount -= 1
            }
        
        case 2: // 수학점수 준비, 영어점수 계산
            let numCheck = checkNil(str: tfScore.text!)
            if numCheck == 1{
                lblSubject.text = subjectTitle[subjectCount]
                score[1] = Int(tfScore.text!)!
                tfScore.text = ""
                lblMessage.text = ""
            }else{
                lblMessage.text = "숫자를 입력하세요!"
                subjectCount -= 1
            }
        case 3: // 결과화면 준비, 수학점수 계산
            let numCheck = checkNil(str: tfScore.text!)
            if numCheck == 1{
                lblSubject.text = subjectTitle[subjectCount]
                score[2] = Int(tfScore.text!)!
                
                tfScore.isHidden = true // 점수 입력 textfield 숨기기
                calcTotal_Average() // 총점과 평균 계산
                summaryGrade() // 과목과 평균의 비교 출력
                
                tfScore.text = ""
                lblMessage.text = ""
            }else{
                lblMessage.text = "숫자를 입력하세요!"
                subjectCount -= 1
            }
        default:
            subjectCount = 0
            lblSubject.text = subjectTitle[subjectCount]
            tfScore.isHidden = false
            lblTotal.text = ""
            lblAverage.text = ""
            lblKorean.text?.removeAll()
            lblEnglish.text?.removeAll()
            lblMathematics.text?.removeAll()
            score = [0,0,0]
        }

    }
    
    func calcTotal_Average(){
        let calcFunction = calcTotal(scoreVar: score)
        lblTotal.text = "총점은 \(calcFunction.0) 입니다."
        lblAverage.text = "평균은 \(round(calcFunction.1 * 100) / 100)"
    }
    
    func calcTotal(scoreVar: [Int]) -> (Int, Double){
        var funcTotal: Int = 0
        for i in 0..<subjectTitle.count - 1{
            funcTotal += score[i]
        }
        let average: Double = Double(funcTotal) / 3.0
        averageScore = average
        
        return (funcTotal, average)
    }
    
    func summaryGrade(){
        // 국어
        if averageScore > Double(score[0]){
            lblKorean.text = "국어 점수는 \(score[0])으로 평균보다 낮습니다."
        }else if averageScore < Double(score[0]){
            lblKorean.text = "국어 점수는 \(score[0])으로 평균보다 높습니다."
        }else{
            lblKorean.text = "국어 점수는 \(score[0])으로 평균과 동일합니다."
        }
        
        // 영어
        if averageScore > Double(score[1]){
            lblEnglish.text = "영어 점수는 \(score[1])으로 평균보다 낮습니다."
        }else if averageScore < Double(score[1]){
            lblEnglish.text = "영어 점수는 \(score[1])으로 평균보다 높습니다."
        }else{
            lblEnglish.text = "영어 점수는 \(score[1])으로 평균과 동일합니다."
        }

        // 수학
        if averageScore > Double(score[2]){
            lblMathematics.text = "수학 점수는 \(score[2])으로 평균보다 낮습니다."
        }else if averageScore < Double(score[2]){
            lblMathematics.text = "수학 점수는 \(score[2])으로 평균보다 높습니다."
        }else{
            lblMathematics.text = "영수학어 점수는 \(score[2])으로 평균과 동일합니다."
        }

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

