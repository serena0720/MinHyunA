//
//  ViewController.swift
//  06_TabBarPage
//
//  Created by Hyun A Song on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillLayoutSubviews() { //viewwilllayout으로 검색:viewdidload 전 디자인과 관련된 내용
        let kBarHeight : Double = 100 // 100만큼 바를 넓이를 높이겠다.
        self.tabBarController!.tabBar.frame.size.height = kBarHeight
        //크기를 정했기 때문에 veiw 위치가 변경
        self.tabBarController?.tabBar.frame.origin.y = view.frame.height - kBarHeight
    }//일괄 적용 된다.
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

