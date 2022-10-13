//
//  ViewController.swift
//  PinchGesture_01
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgPinch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Pinch Setup
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_ :)))
        self.view.addGestureRecognizer(pinch)
    }
    //objc를 사용한 확대 속성 함수 만들기
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer){
        imgPinch.transform = imgPinch.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale = 1 // 원래 크기로 다시 돌려놔야 안정화 됨. 다음 변환을 위해 스케일속성을 1로 설정
    }

}

