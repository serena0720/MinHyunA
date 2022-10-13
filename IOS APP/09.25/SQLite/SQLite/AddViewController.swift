//
//  AddViewController.swift
//  SQLite
//
//  Created by Hyun A Song on 2022/09/25.
//

import UIKit
import SQLite3 //!!!!!!!!!!잊지말기

class AddViewController: UIViewController {
    
    @IBOutlet weak var tfName: UILabel!
    @IBOutlet weak var tfDept: UITextField!
    @IBOutlet weak var tfTel: UITextField!
    
    var db: OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //SQLite부분을 화면이 뜨기 전에 정리를 해야함 : SQLite 생성하기 (현재는 DB만 있는 상태)
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("StudentsData.sqlite") // 빈 파일 하나 만든고 이름을 정해준 것.
        //SQLite 제대로 실행 됬는지 체크
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("error opening database")
        }
    }
    
    @IBAction func btnInsert(_ sender: UIButton) {
        var stmt: OpaquePointer? // c언어용인데 SQLite가 c언어로 만든거임
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
        
        let name = tfName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let dept = tfDept.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let phone = tfTel.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let queryString = "INSERT INTO students (sname, sdept, sphone) VALUES (?,?,?)" // ? 에 데이터가 들어감
        
        //문제 없으면 return
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert : \(errmsg)")
            return
        }
        sqlite3_bind_text(stmt, 1, name, -1, SQLITE_TRANSIENT) // ""안은 textfield에서 입력하는 변수 값으로 대체
        sqlite3_bind_text(stmt, 2, dept, -1, SQLITE_TRANSIENT)
        sqlite3_bind_text(stmt, 3, phone, -1, SQLITE_TRANSIENT)
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print(" failure inserting : \(errmsg)")
            return
        }
        
        let resultAlert = UIAlertController(title: "결과", message: "입력 되었습니다.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: {ACTION in
            self.navigationController?.popViewController(animated: true)
        })
        
        resultAlert.addAction(okAction)
        present(resultAlert, animated: true, completion: nil)
        
        
        print("Students saved seccessfully")
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation

    
    
}
    



