//
//  TableViewController.swift
//  SQLiteSimpleTodoList
//
//  Created by Kenny Hahn on 2022/05/31.
//

import UIKit
import SQLite3 // <---

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    var todoList: [TodoList] = []
    var db: OpaquePointer?

    override func viewDidLoad() {
        super.viewDidLoad()

        createTable()
        tempInsert()
        readValues()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    func createTable(){
        // SQLite 생성하기
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("TodoList.sqlite")
        
        
        if sqlite3_open(fileURL.path(), &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS todolists (seq INTEGER PRIMARY KEY AUTOINCREMENT, contents TEXT)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
    }

    func tempInsert(){
        var stmt: OpaquePointer?
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

        let queryString = "INSERT INTO todolists (contents) VALUES (?)"
        
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_bind_text(stmt, 1, "꽃선물 준비", -1, SQLITE_TRANSIENT)

//        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
//            let errmsg = String(cString: sqlite3_errmsg(db)!)
//            print("error preparing insert: \(errmsg)")
//            return
//        }
//
//        if sqlite3_bind_text(stmt, 1, "꽃선물 준비", -1, SQLITE_TRANSIENT) != SQLITE_OK{
//            let errmsg = String(cString: sqlite3_errmsg(db)!)
//            print("failure binding contents: \(errmsg)")
//            return
//        }
        
        if sqlite3_step(stmt) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure inserting todolists: \(errmsg)")
            return
        }

        print("TodoList saved successfully")

    }
    
    func readValues(){
        todoList.removeAll()

        let queryString = "SELECT * FROM todolists"
        
        var stmt:OpaquePointer?
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        while(sqlite3_step(stmt) == SQLITE_ROW){
            let id = sqlite3_column_int(stmt, 0)
            let contents = String(cString: sqlite3_column_text(stmt, 1))
            print(id, contents)
            
            todoList.append(TodoList(id: Int(id), contents: String(describing: contents)))
        }
        
        self.tvListView.reloadData()

    }
    
    @IBAction func btnInsert(_ sender: UIBarButtonItem) {
        let addAlert = UIAlertController(title: "Todo List", message: "추가할 내용을 입력하세요!", preferredStyle: UIAlertController.Style.alert
        )
        
        // configurationHandler의 파라미터 부분에 엔터
        addAlert.addTextField { addText in
            addText.placeholder = "추가 내용"
        }
            
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)

        let okAction = UIAlertAction(title: "추가", style: .default, handler: {ACTION in
            if addAlert.textFields![0].text!.isEmpty{
                return
            }
            self.insertAction(content: addAlert.textFields![0].text!)
            self.readValues()
        })
        
        addAlert.addAction(cancelAction)
        addAlert.addAction(okAction)
        
        present(addAlert, animated: true, completion: nil)
        

        
    }
    
    func insertAction(content : String){
        var stmt: OpaquePointer?
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

        let queryString = "INSERT INTO todolists (contents) VALUES (?)"
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        sqlite3_bind_text(stmt, 1, content, -1, SQLITE_TRANSIENT)
        
//        if sqlite3_bind_text(stmt, 1, content, -1, SQLITE_TRANSIENT) != SQLITE_OK{
//            let errmsg = String(cString: sqlite3_errmsg(db)!)
//            print("failure binding contents: \(errmsg)")
//            return
//        }
        
        if sqlite3_step(stmt) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure inserting todolists: \(errmsg)")
            return
        }

        print("Insert successfully")

    }
    
    func deleteAction(seq: Int){
        var stmt: OpaquePointer?
        
        let queryString = "DELETE FROM todolists WHERE seq = ?"
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
                       
        sqlite3_bind_int(stmt, 1, Int32(seq))
        
//        if sqlite3_bind_int(stmt, 1, Int32(seq)) != SQLITE_OK{
//            let errmsg = String(cString: sqlite3_errmsg(db)!)
//            print("failure binding name: \(errmsg)")
//            return
//        }

        if sqlite3_step(stmt) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure inserting student: \(errmsg)")
            return
        }

    }

    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return todoList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        let list: TodoList
        list = todoList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = list.contents
        content.image = UIImage(systemName: "paperplane.fill")
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
            let id = todoList[indexPath.row].id
            
            deleteAction(seq: id)
            
            readValues()
            print(">>>", id)

        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
