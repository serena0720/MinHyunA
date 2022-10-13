//
//  ViewController.swift
//  KeyboardHandling
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Keyboard Handling
        setKeyboardEvent()
    }
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //키보드 핸들링을 위해 object-c call //selecter = func
    func setKeyboardEvent(){
        //키보드가 나타났을 때, 화면 올리는 함수
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillApear(_ :)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //키보드가 없어졌을 때, 화면 내리는 함수
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisapear(_ :)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillApear(_ sender:NotificationCenter){
        self.view.frame.origin.y = -150 // -가 위로 올라가는 것.
    }
    @objc func keyboardWillDisapear(_ sender:NotificationCenter){
        self.view.frame.origin.y = 0 // +가 아래로 내리는 것.
    }
}

