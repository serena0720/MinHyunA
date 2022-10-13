//
//  ViewController.swift
//  Timer
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class Q09ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var imgTitle2: UILabel!
    @IBOutlet weak var imgView2: UIImageView!
    
    var imageName = [ "flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    var numImage = 0
    var interval = 1.0 // interval을 3초로 설정
    let timeSelector: Selector = #selector(Q09ViewController.updateTime) // 길어서 따로 만듦 updatetime 함수를 따로 정의해줘야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Timer 설정. 스탑워치의 개념.
        //async 방식으로 진행. 타임이 진행되는 cpu따로 동작하는 cpu 따로 설정하겠다는 얘기
        Timer.scheduledTimer(timeInterval: interval,/*초*/ target: self, selector: timeSelector,/*얘를 구동*/ userInfo: nil, repeats: true)
        imgView.image = UIImage(named: imageName[numImage])
        imgTitle.text = imageName[numImage]
        
        imgView2.image = UIImage(named: imageName[numImage])
        imgTitle2.text = imageName[numImage]
    }
    @objc func updateTime(){
        numImage += 1
        if numImage >= imageName.count{
            numImage = 0
        }
        imgView.image = UIImage(named: imageName[numImage])
            imgTitle.text = imageName[numImage]
        if (numImage + 1)  % 3 == 0{
        imgView2.image = UIImage(named: imageName[numImage])
        imgTitle2.text = imageName[numImage]
        }
    }
}

