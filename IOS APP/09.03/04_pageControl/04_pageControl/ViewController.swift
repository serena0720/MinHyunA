//
//  ViewController.swift
//  04_pageControl
//
//  Created by Hyun A Song on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var image = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // PageControl Setting
        pageControl.numberOfPages = image.count//전체 페이지 수 설정
        pageControl.currentPage = 0 // 시작페이지 설정
        pageControl.pageIndicatorTintColor = UIColor.green // indicator 현페이지가 아닌 다른페이지 표시
        pageControl.currentPageIndicatorTintColor = UIColor.red//indicator 현페이지는 빨간색으로 표시
        
        imgView.image = UIImage(named: image[pageControl.currentPage])
    }

    @IBAction func pageControl(_ sender: UIPageControl) {
        imgView.image = UIImage(named: image[pageControl.currentPage])
    }
    
}

