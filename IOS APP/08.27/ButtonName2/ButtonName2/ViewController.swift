//
//  ViewController.swift
//  ButtonName2
//
//  Created by Hyun A Song on 2022/08/27.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var lblSmile: UILabel!
    
    @IBOutlet weak var lblsmile: UIButton!
    
    @IBOutlet weak var lblteasing: UIButton!
    
    @IBOutlet weak var lblangry: UIButton!
    
    
    var smile:String = "😆"
    var teassing:String = "🤪"
    var angry:String = "🤬"
    var emoji:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblSmile.text = "이곳에 Emoji가 출력됩니다."
    }
    
    @IBAction func lblsmile(_ sender: UIButton) {
       emoji += "😆"
        lblsmile.title = emoji
    }
    
    
    @IBAction func lblteasing(_ sender: UIButton) {
        emoji += "🤪"
        lblteasing.title = emoji
    }


    @IBAction func lblangry(_ sender: UIButton) {
        emoji += "🤬"
        lblangry.title! = emoji
    }
}

