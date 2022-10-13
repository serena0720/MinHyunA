//
//  ViewController.swift
//  ScoreSummary
//
//  Created by Hyun A Song on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSubject: UILabel!
    @IBOutlet weak var tfScore: UITextField!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblAverage: UILabel!
    @IBOutlet weak var lblKorea: UILabel!
    @IBOutlet weak var lblEnglich: UILabel!
    @IBOutlet weak var lblMath: UILabel!
    @IBOutlet weak var lblMessage: UILabel!
    
    var subjectCount = 0 // 과목별 순서
    var score: [Int] = [0,0,0] // 과목별 점수
    var subjectTitle: [String] = ["국어점수", "영어점수", "수학점수", "요약"]
    var averageScore: Double = 0
    
                                  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSubject.text = subjectTitle[subjectCount]
        lblTotal.text = ""
        lblAverage.text = ""
        lblKorea.text = ""
        lblEnglich.text = ""
        lblMath.text = ""
        lblMessage.text = ""
    }
    
    @IBAction func btnCalc(_ sender: UIButton) {
        subjectCount += 1
        switch subjectCount{
        case 1 : //영어점수 준비, 국어점수 계산
            let numCheck = checkNil(str: tfScore.text!)
            if numCheck == 1 {
                lblSubject.text = subjectTitle[subjectCount]
                score[0] = Int(tfScore.text!)!
                tfScore.text = ""
                lblMessage = ""
            }else{
                lblMessage.text = "숫자를 입력하세요."
                subjectCount -= 1
            }
        }
        
    case 2 : //수학점수 준비, 영어점수 계산
        let numCheck = checkNil(str: tfScore.text!)
        if numCheck == 1 {
            lblSubject.text = subjectTitle[subjectCount]
            score[1] = Int(tfScore.text!)!
            tfScore.text = ""
            lblMessage = ""
        }else{
            lblMessage.text = "숫자를 입력하세요."
            subjectCount -= 1
        }
        
    case 3 : //수학점수 준비, 영어점수 계산
        let numCheck = checkNil(str: tfScore.text!)
        if numCheck == 1 {
            lblSubject.text = subjectTitle[subjectCount]
            score[2] = Int(tfScore.text!)!
            
            tfScore.isHidden = true // 점수 입력 textfield 숨기기
            calcTotal_Average()// 총점과 평균 계산
            summaryGrade()// 과목과 평균의 비교 출력
            
            tfScore.text = ""
            lblMessage = ""
        }else{
            lblMessage.text = "숫자를 입력하세요."
            subjectCount -= 1
        }
    default:
        subjectCount = 0
        lblSubject.text = subjectTitle[subjectCount]
        tfScore.isHidden = false
        lblTotal.text = ""
        lblAverage.text = ""
        lblKorea.text = ""
        lblEnglich.text = ""
        lblMath.text = ""
        score = [0,0,0]
    }
    func calcTotal_Average(){
        let calcFunction = calcTotal(scoreVar:score) // 배열값ㅇ르 받음
        lblTotal.text = "총점은 \(calcFunction.0)입니다"
        lblAverage.text = "평균은 \(round(calcFunction.1 * 100) / 100)입니다."
    }
    
    func calcTotal(scoreVar: [Int]) -> (Int,Double){
        var funcTotal:Int = 0
        for i in 0..<subjectTitle.count - 1 { // 요약에는 점수가 없기 때문에.
            funcTotal += score[i]
        }
        let average:Double = Double( funcTotal) / 3.0
        averageScore = average
        
        return(funcTotal,average)
    }
    
    func summaryGrade(){
        //국어
        if averageScore > Double(score[0]){
            lblKorea.text = "국어점수는 \(score[0])으로 평균보다 낮습니다."
        }else if averageScore < Double(score[0]){
            lblKorea.text = "국어점수는 \(score[0])으로 평균보다 높습니다."
        }else {
            lblKorea.text = "국어점수는 \(score[0])으로 평균과 동일니다."
        }
        //영어
        if averageScore > Double(score[1]){
            lblEnglich.text = "영어점수는 \(score[1])으로 평균보다 낮습니다."
        }else if averageScore < Double(score[1]){
            lblEnglich.text = "영어점수는 \(score[1])으로 평균보다 높습니다."
        }else {
            lblEnglich.text = "영어점수는 \(score[1])으로 평균과 동일니다."
        }
        //수학
        if averageScore > Double(score[2]){
            lblMath.text = "수학점수는 \(score[2])으로 평균보다 낮습니다."
        }else if averageScore < Double(score[2]){
            lblMath.text = "수학점  \(score[2])으로 평균보다 높습니다."
        }else {
            lblMath.text = "수학점수는 \(score[2])으로 평균과 동일니다."
        }
    }

    
    func checkNil(str : String)->Int{
        let check = str.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return 0
        }else{
            return 1
        }
    }
}

