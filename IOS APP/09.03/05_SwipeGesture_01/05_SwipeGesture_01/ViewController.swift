//
//  ViewController.swift
//  05_SwipeGesture_01
//
//  Created by Hyun A Song on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgViewLeft: UIImageView!
    @IBOutlet weak var imgViewRight: UIImageView!
    
    var imgLeft = ["arrow-left-black.png","arrow-left-red.png"]
    var imgRight = ["arrow-right-black.png","arrow-right-red.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Gesture 만들기
        makeTouch()
        
        // 첫화면 구성
        imgViewLeft.image = UIImage(named: imgLeft[0])
        imgViewRight.image = UIImage(named: imgRight[0])
    }
    func makeTouch(){
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left// 왼쪽행동에 대한 정의
        self.view.addGestureRecognizer(swipeLeft) // 왼쪽행동을 호출 및 정의
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right// 오른쪽행동에 대한 정의
        self.view.addGestureRecognizer(swipeRight) // 오른쪽 행동을 호출 및 정의
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))// 위로행동에 대한 정의
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up// 위로행동에 대한 정의
        self.view.addGestureRecognizer(swipeUp) // 위로행동을 호출 및 정의
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))// 아래로행동에 대한 정의
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down// 아래로행동에 대한 정의
        self.view.addGestureRecognizer(swipeDown) // 아래로행동을 호출 및 정의
    }
    //Gesture Action 반응
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            imgViewLeft.image = UIImage(named: imgLeft[0])//초기화
            imgViewRight.image = UIImage(named: imgRight[0])//초기화
            
            //움직이는 것을 정의
            switch swipeGesture.direction{ //gesture가 살짝 어긋나도 인지하도록 보완
            case UISwipeGestureRecognizer.Direction.left:
                imgViewLeft.image = UIImage(named: imgLeft[1])
            case UISwipeGestureRecognizer.Direction.right:
                imgViewRight.image = UIImage(named: imgRight[1])
            case UISwipeGestureRecognizer.Direction.up:
                imgViewLeft.image = UIImage(named: imgLeft[1])
                imgViewRight.image = UIImage(named: imgRight[1])
            case UISwipeGestureRecognizer.Direction.down:
                imgViewLeft.image = UIImage(named: imgLeft[1])
                imgViewRight.image = UIImage(named: imgRight[1])
            default:
                break
            }
        }
    }

}//ViewController

