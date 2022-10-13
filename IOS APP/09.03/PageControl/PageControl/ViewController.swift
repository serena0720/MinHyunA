//
//  ViewController.swift
//  PageControl
//
//  Created by Hyun A Song on 2022/09/03.
//

import UIKit
import WebKit // 잊지 말기!

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myActivityIndicator: WKWebView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let url = ["https://www.kbs.co.kr","https://www.imbc.com","https://www.sbs.co.kr", "https://jtbc.co.kr"]
    var urlPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //page Control
        pageControl.numberOfPages = url.count//전체 페이지 수 설정
        pageControl.currentPage = 0 // 시작페이지 설정
        pageControl.pageIndicatorTintColor = UIColor.green // indicator 현페이지가 아닌 다른페이지 표시
        pageControl.currentPageIndicatorTintColor = UIColor.red//indicator 현페이지는 빨간색으로 표시
        loadWebPage(url[urlPage])
        
        makeTouch()
    }
    func loadWebPage(_ url: String){
        //web에서 정보 가져오기
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest) // 화면을 띄워주는 역할
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
            loadWebPage(url[0])//초기화
            
            //움직이는 것을 정의
            switch swipeGesture.direction{ //gesture가 살짝 어긋나도 인지하도록 보완
            case UISwipeGestureRecognizer.Direction.left:
                urlPage -= -1
                if urlPage < 0 {
                    loadWebPage(url[url.count])
                }else{
                    loadWebPage(url[urlPage])
                }
            case UISwipeGestureRecognizer.Direction.right:
                urlPage += 1
                loadWebPage(url[urlPage])
            case UISwipeGestureRecognizer.Direction.up:
                loadWebPage(url[pageControl.currentPage])
            case UISwipeGestureRecognizer.Direction.down:
                loadWebPage(url[pageControl.currentPage])
            default:
                break
            }
        }
    }

    @IBAction func pageControl(_ sender: UIPageControl) {
        loadWebPage(url[pageControl.currentPage])
    }
    
}//ViewController





