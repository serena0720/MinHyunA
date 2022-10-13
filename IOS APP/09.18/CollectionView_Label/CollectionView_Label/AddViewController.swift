//
//  AddViewController.swift
//  CollectionView_Label
//
//  Created by Hyun A Song on 2022/09/18.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var tfHuman: UITextField!
    //@IBOutlet weak var btnInsert: UIButton! // 버튼은 함수를 줘야지!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnInsert(_ sender: UIButton) {
        if tfHuman.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{
            Message.check = "Old"
        }else{
            Message.check = "New"
            Message.name = tfHuman.text!
        }
        
        tfHuman.text = "" // 입력한 값 지우기
        navigationController?.popViewController(animated: true) // 화면 넘거가기
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
