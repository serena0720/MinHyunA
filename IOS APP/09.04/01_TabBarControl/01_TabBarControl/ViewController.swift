//
//  ViewController.swift
//  01_TabBarControl
//
//  Created by Hyun A Song on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn02(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    
    @IBAction func btn01(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1 // 2번째 페이지로 나오게
    }
    
}

