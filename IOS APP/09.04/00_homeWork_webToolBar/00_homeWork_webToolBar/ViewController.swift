//
//  ViewController.swift
//  00_homeWork_webToolBar
//
//  Created by Hyun A Song on 2022/09/04.
//

import UIKit
import WebKit // 잊지 말기!

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var toolSbs: UIToolbar!
    
    @IBOutlet weak var toolMbc: UIToolbar!
    
    @IBOutlet weak var toolKbs: UIToolbar!
    
    @IBOutlet weak var toolJtbc: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let kBarHeight : Double = 150 // 100만큼 바를 넓이를 높이겠다.
        self.tabBarController?.tabBar.frame.size.height = kBarHeight
        //크기를 정했기 때문에 veiw 위치가 변경
        self.tabBarController?.tabBar.frame.origin.y = view.frame.height - kBarHeight
    }


}

