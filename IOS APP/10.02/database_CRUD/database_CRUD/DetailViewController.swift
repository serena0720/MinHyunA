//
//  DeleteViewController.swift
//  database_CRUD
//
//  Created by Hyun A Song on 2022/10/02.
//

import UIKit

class DeleteViewController: UIViewController {
    
    @IBOutlet weak var tfCode: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfDept: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfCode.text = Message.scode
        tfName.text = Message.sname
        tfDept.text = Message.sdept
        tfPhone.text = Message.sphone
    }
    
    @IBAction func btnUpdate(_ sender: UIButton) {
        let code = tfCode.text!
        let name = tfName.text!
        let dept = tfDept.text!
        let phone = tfPhone.text!
        
        //code만 넣어서 확인해도 됨
        if !code.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{ // not empty
            let updateModel = UpdateModel()
            let result = updateModel.insertItems(code: code, name: name, dept: dept, phone: phone) // bool값을 받아옴
            
            if result == true{
                let resuleAlert = UIAlertController(title: "완료", message: "수정이 되었습니다.", preferredStyle: .actionSheet)
                let onAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                    self.navigationController?.popViewController(animated: true)
                })
                resuleAlert.addAction(onAction)
                present(resuleAlert, animated: true, completion: nil)
            }else{
                let resuleAlert = UIAlertController(title: "실패", message: "에러가 발생 되었습니다.", preferredStyle: .alert)
                let onAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                resuleAlert.addAction(onAction)
                present(resuleAlert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func btnDelete(_ sender: UIButton) {
        let code = tfCode.text!
        let name = tfName.text!
        let dept = tfDept.text!
        let phone = tfPhone.text!
        
        //code만 넣어서 확인해도 됨
        if !code.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{ // not empty
            let deleteModel = DeleteModel()
            let result = deleteModel.insertItems(code: code, name: name, dept: dept, phone: phone) // bool값을 받아옴
            
            if result == true{
                let resuleAlert = UIAlertController(title: "완료", message: "삭제가 되었습니다.", preferredStyle: .actionSheet)
                let onAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                    self.navigationController?.popViewController(animated: true)
                })
                resuleAlert.addAction(onAction)
                present(resuleAlert, animated: true, completion: nil)
            }else{
                let resuleAlert = UIAlertController(title: "실패", message: "에러가 발생 되었습니다.", preferredStyle: .alert)
                let onAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                resuleAlert.addAction(onAction)
                present(resuleAlert, animated: true, completion: nil)
            }
        }
    }
    
}
