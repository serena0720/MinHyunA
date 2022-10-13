//
//  ViewController.swift
//  Timer
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    var imageName = [ "flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var numImage = 0
    let interval = 3.0 // interval을 3초로 설정
    let timeSelector: Selector = #selector(ViewController.updateTime) // 길어서 따로 만듦 updatetime 함수를 따로 정의해줘야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Timer 설정. 스탑워치의 개념.
        //async 방식으로 진행. 타임이 진행되는 cpu따로 동작하는 cpu 따로 설정하겠다는 얘기
        Timer.scheduledTimer(timeInterval: interval,/*초*/ target: self, selector: timeSelector,/*얘를 구동*/ userInfo: nil, repeats: true)
        imgView.image = UIImage(named: imageName[numImage])
        imgTitle.text = imageName[numImage]
    }
    @objc func updateTime(){
        numImage += 1
        if numImage >= imageName.count{
            numImage = 0
        }
        imgView.image = UIImage(named: imageName[numImage])
        imgTitle.text = imageName[numImage]
    }
}

