//
//  ViewController.swift
//  SwipeGesture_01
//
//  Created by TJ on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgViewLeft: UIImageView!
    @IBOutlet weak var imgViewRight: UIImageView!
    
    var imgLeft = ["arrow-left-black.png", "arrow-left-red.png"]
    var imgRight = ["arrow-right-black.png", "arrow-right-red.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Gesture 만들기
        makeTouch()
        
        // 첫화면 구성
        imgViewLeft.image = UIImage(named: imgLeft[0])
        imgViewRight.image = UIImage(named: imgRight[0])
    }
    
    // Gesutre Action 행동
    func makeTouch(){
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)

        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)

        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_ :)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)

    }
    
    // Gesture Action 반응
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            imgViewLeft.image = UIImage(named: imgLeft[0])
            imgViewRight.image = UIImage(named: imgRight[0])
            
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.left:
                imgViewLeft.image = UIImage(named: imgLeft[1])
            case UISwipeGestureRecognizer.Direction.right:
                imgViewRight.image = UIImage(named: imgRight[1])
            case UISwipeGestureRecognizer.Direction.up:
                imgViewLeft.image = UIImage(named: imgLeft[1])
                imgViewRight.image = UIImage(named: imgRight[1])
            default:
                break
            }
        }
    }

}// ViewController

