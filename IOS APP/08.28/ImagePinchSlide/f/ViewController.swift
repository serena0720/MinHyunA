//
//  ViewController.swift
//  f
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var imgPreview: UIImageView!
    
    //나중에 data 처리 해야함.
    var imageName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var numImage = 0 // 첫번째 그림 설정
    var numPreviewImage = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayPreviewImage()
        displayImage()
        // Pinch Setup
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_ :)))
        self.view.addGestureRecognizer(pinch)
        //objc를 사용한 preview 사진 확대
        let pinch2 = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch2(_ :)))
        self.view.addGestureRecognizer(pinch)
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        numImage -= 1
        if numImage < 0{
            numImage = 5
        }
        numPreviewImage -= 1
        if numPreviewImage < 0{
            numPreviewImage = 5
        }
        displayPreviewImage()
        displayImage()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage += 1
        if numImage >= imageName.count{
            numImage = 0
        }
        numPreviewImage += 1
        if numPreviewImage >= imageName.count{
            numPreviewImage = 0
        }
        displayPreviewImage()
        displayImage()
    }
    
    func displayPreviewImage(){
        imgPreview.image = UIImage(named: imageName[numPreviewImage])
    }
    
    //Image 출력 함수 설정하기
    func displayImage(){ // 전역변수가 출력할 것이 떄문에 리턴 필요 없음.
        imgTitle.text = imageName[numImage]
        imgView.image = UIImage(named: imageName[numImage])
    }
    
    //objc를 사용한 확대 속성 함수 만들기
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer){
        imgView.transform = imgView.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1 // 원래 크기로 다시 돌려놔야 안정화 됨. 다음 변환을 위해 스케일속성을 1로 설정
    }
    
    //objc를 사용한 preview 사진 확대
    @objc func doPinch2(_ pinch: UIPinchGestureRecognizer){
        imgPreview.transform = imgPreview.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1 // 원래 크기로 다시 돌려놔야 안정화 됨. 다음 변환을 위해 스케일속성을 1로 설정
    }
}
