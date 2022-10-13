//
//  ViewController.swift
//  ButtonName2
//
//  Created by TJ on 2022/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSmile: UILabel!
    var smile: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSmile.text = "이곳에 Emoji가 출력 됩니다."
    }

    @IBAction func btnSmile(_ sender: UIButton) {
        smile += "😀"
        lblSmile.text! = smile
    }
    
}

