//
//  DetailViewController.swift
//  SQL_SimpleTodoList
//
//  Created by Hyun A Song on 2022/10/01.
//

import UIKit
import SQLite3

class DetailViewController: UIViewController {

    @IBOutlet weak var tfId: UITextField!
    @IBOutlet weak var tfContent: UITextField!
    
    var db: OpaquePointer?
    
    var receivedId = 0
    var receivedContent = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tfId.text = String(receivedId)
        tfContent.text = receivedContent
        
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("TodoData.sqlite") // 빈 파일 하나 만든고 이름을 정해준 것.
        //SQLite 제대로 실행 됬는지 체크
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("error opening database")
        }
    }
    
    @IBAction func btnUpdate(_ sender: UIButton) {
        var stmt: OpaquePointer? // c언어용인데 SQLite가 c언어로 만든거임
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self) //언어 변환 정의
        
        let id: String = tfId.text!
        let content = tfContent.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let queryString = "UPDATE todolist SET scontent = ?WHERE sid = ?" // id값에 들어간 모든 내용을 바꾼다
        
        //문제 없으면 return
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update : \(errmsg)")
            return
        }
        sqlite3_bind_text(stmt, 1, content, -1, SQLITE_TRANSIENT) // ""안은 textfield에서 입력하는 변수 값으로 대체
        sqlite3_bind_int(stmt, 2, Int32(id)!)
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print(" failure updating : \(errmsg)")
            return
        }
        
        let resultAlert = UIAlertController(title: "결과", message: "수정 되었습니다.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: {ACTION in
            self.navigationController?.popViewController(animated: true)
        })
        
        resultAlert.addAction(okAction)
        present(resultAlert, animated: true, completion: nil)
        
        
        print("Students saved seccessfully")
    }
    
    @IBAction func btnDelete(_ sender: UIButton) {
        var stmt: OpaquePointer? // c언어용인데 SQLite가 c언어로 만든거임

        let id: String = tfId.text!
        
        let queryString = "DELETE FROM todolist WHERE sid = ?" // id값에 들어간 모든 내용을 바꾼다
        
        //문제 없으면 return
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update : \(errmsg)")
            return
        }
        sqlite3_bind_int(stmt, 1, Int32(id)!)
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print(" failure deleting : \(errmsg)")
            return
        }
        
        let resultAlert = UIAlertController(title: "결과", message: "삭제 되었습니다.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: {ACTION in
            self.navigationController?.popViewController(animated: true)
        })
        
        resultAlert.addAction(okAction)
        present(resultAlert, animated: true, completion: nil)
        
        
        print("Students saved seccessfully")
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
