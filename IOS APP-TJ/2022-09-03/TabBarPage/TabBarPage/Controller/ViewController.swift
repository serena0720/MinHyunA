//
//  ViewController.swift
//  TabBarPage
//
//  Created by TJ on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillLayoutSubviews() {
        let kBarHeight: Double = 120
        self.tabBarController!.tabBar.frame.size.height = kBarHeight
        self.tabBarController!.tabBar.frame.origin.y = view.frame.height - kBarHeight
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

