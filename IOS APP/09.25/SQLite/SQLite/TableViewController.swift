//
//  TableViewController.swift
//  SQLite
//
//  Created by Hyun A Song on 2022/09/25.
//

import UIKit
//SQLite 부르기 !!!!!
import SQLite3

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    
    var studentsList : [Students] = []
    var db: OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //SQLite부분을 화면이 뜨기 전에 정리를 해야함 : SQLite 생성하기 (현재는 DB만 있는 상태)
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appending(path: "StudentsData.sqlite") // 빈 파일 하나 만든고 이름을 정해준 것.
        //SQLite 제대로 실행 됬는지 체크
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("error opening database")
        }
        //SQLite 실행
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS students (sid INTEGER PRIMARY KEY AUTOINCREMENT,sname TEXT, sdept TEXT, sphone TEXT)", nil, nil, nil) != SQLITE_OK{ //INTEGER : int 정수 AUTOINCREMENT : 자동 숫자를 올려줌. CREATE TABLE IF NOT EXISTS students. 테이블 이름 정의
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table \(errmsg)")
            return
        }
        
        //temp Insert 만들기 : 잘 갖고 오는지 체크
        //tempInsert()
        
        //값 읽기
        //readValues() //viewwillapear로 대체
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    /*
    // 언어 변환하여 잘 갖고 오는지 체크
    func tempInsert(){
        var stmt: OpaquePointer? // c언어용인데 SQLite가 c언어로 만든거임
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
        
        let queryString = "INSERT INTO students (sname, sdept, sphone) VALUES (?,?,?)" // ? 에 데이터가 들어감
        
        //문제 없으면 return
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert : \(errmsg)")
            return
        }
        sqlite3_bind_text(stmt, 1, "유비", -1, SQLITE_TRANSIENT) // ""안은 textfield에서 입력하는 변수 값으로 대체
        sqlite3_bind_text(stmt, 2, "컴퓨터공학과", -1, SQLITE_TRANSIENT)
        sqlite3_bind_text(stmt, 3, "1234", -1, SQLITE_TRANSIENT)
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print(" failure inserting : \(errmsg)")
            return
        }
        print("Students saved seccessfully")
    }
     */
    
    
    /* 위에거에서 if 구문 지워도 문제 없다.
     var stmt: OpaquePointer? // c언어용인데 SQLite가 c언어로 만든거임
     let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
     
     let queryString = "INSERT INTO students (sname, sdept, sphone) VALUES (?,?,?)" // ? 에 데이터가 들어감
     
     sqlite3_prepare(db, queryString, -1, &stmt, nil)
     
     sqlite3_bind_text(stmt, 1, "유비", -1, SQLITE_TRANSIENT) // ""안은 textfield에서 입력하는 변수 값으로 대체
     sqlite3_bind_text(stmt, 2, "컴퓨터공학과", -1, SQLITE_TRANSIENT)
     sqlite3_bind_text(stmt, 3, "1234", -1, SQLITE_TRANSIENT)
     */
    
    func readValues(){
        studentsList.removeAll() // 배열에 있는 걸 다 지우고 시작해야 중복추가 안됨
        let queryString = "SELECT * FROM students" // ? 에 데이터가 들어감 sql 언어로 바꿔주는거
        var stmt: OpaquePointer? // c언어용인데 SQLite가 c언어로 만든거임
        
        //문제 없으면 return
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing select : \(errmsg)")
            return
        }
        
        while(sqlite3_step(stmt) == SQLITE_ROW){ // 데이터가 있으면 row에 맞춰서 돈다
            let id = sqlite3_column_int(stmt, 0) // 첫번째
            let name = String(cString: sqlite3_column_text(stmt, 1)) // c언어와 swift string 타입이 달라서 변환해야함
            let dept = String(cString: sqlite3_column_text(stmt, 2))
            let phone = String(cString: sqlite3_column_text(stmt, 3))
            
            print(id, name, dept, phone)
            studentsList.append(Students(id: Int(id), name: name, dept: dept, tel: phone))
        }
        self.tvListView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        readValues()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return studentsList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.text = "학번 : \(studentsList[indexPath.row].id)"
        content.secondaryText = "성명 : \(studentsList[indexPath.row].name!)"
        cell.contentConfiguration = content

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let id = studentsList[indexPath.row].id
            
            deleteAction(id)
            readValues()
            
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    func deleteAction(_ id: Int){
        var stmt: OpaquePointer? // c언어용인데 SQLite가 c언어로 만든거임
        //let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self) // 언어 변환이 필요 없음
        
        let queryString = "DELETE FROM students WHERE sid = ?" // textfield값을 여기에 insert
        
        //문제 없으면 return
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{ //-1 commend 길이에 제한이 없다
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing delete : \(errmsg)")
            return
        }
        sqlite3_bind_int(stmt, 1, Int32(id)) // ""안은 textfield에서 입력하는 변수 값으로 대체 //sql는 max int32
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print(" failure deleting : \(errmsg)")
            return
        }
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgDetail"{
            let cell = sender as! UITableViewCell
            let indexPath = self.tvListView.indexPath(for: cell)
            let detailView = segue.destination as! DetailViewController
            
            detailView.receivedId = studentsList[indexPath!.row].id
            detailView.receivedName = studentsList[indexPath!.row].name!
            detailView.recievedDept = studentsList[indexPath!.row].dept!
            detailView.recievedPhone = studentsList[indexPath!.row].tel!
        }
    }
}
