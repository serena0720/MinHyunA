//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by Hyun A Song on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {
// 버튼의 글씨를 바꿀 것이 아니기 때문에   outlet 할 것이 없다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        //UIAlertController 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert) //style .만 눌러도 검색됨 어떤 형태를 할지 고르기
        
        //UIAlertAction 설정
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil) // style 고를때 .으로 검색 // nil로 clousure하면 화면이 꺼짐
        let actioinDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("destructive action called") // 이곳에서 함수를 불러주면 원하는 동작 가능
        }) //closure{}에 action 넣고 누른후의 액션을 정의
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
    
        //controller에 action 집어 넣기 *****
        testAlert.addAction(actionDefault)
        testAlert.addAction(actioinDestructive)
        testAlert.addAction(actionCancel)
        
        present(testAlert, animated: true, completion: nil)// animation은 화면 움직일때 효과 줄거냐 아니냐/ completion=closure
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        //UIAlertController 초기화
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet) //style 만 바꿔주면 위와 동인
        
        //UIAlertAction 설정
        let actionDefault = UIAlertAction(title: "Action Default", style: .default, handler: nil)
        let actioinDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("destructive action called")
        })
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel, handler: nil)
    
        //controller에 action 집어 넣기 *****
        testAlert.addAction(actionDefault)
        testAlert.addAction(actioinDestructive)
        testAlert.addAction(actionCancel)
        
        present(testAlert, animated: true, completion: nil)
    }
    
}

