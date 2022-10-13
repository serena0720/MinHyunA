//
//  TableViewController.swift
//  database_CRUD
//
//  Created by Hyun A Song on 2022/10/02.
//

import UIKit

class TableViewController: UITableViewController {

    
    @IBOutlet var listTableView: UITableView!
    
    var feedItem: [DBModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewWillAppear(_ animated: Bool) {
        //Query모델 불러오기
        let queryModel = QueryModel()
        queryModel.delegate = self
        
        queryModel.downloadItems()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return feedItem.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        //cell에 들어갈 내용 정의
        var content = cell.defaultContentConfiguration()
        content.text = "성명 : \(feedItem[indexPath.row].sname)"
        content.secondaryText = "학번 : \(feedItem[indexPath.row].scode)"
        //위의 내용을 셀에 넣기
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

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgDetail"{
            let cell = sender as! UITableViewCell
            let indexPath = listTableView.indexPath(for: cell)
            Message.sname = feedItem[indexPath!.row].sname
            Message.sdept = feedItem[indexPath!.row].sdept
            Message.scode = feedItem[indexPath!.row].scode
            Message.sphone = feedItem[indexPath!.row].sphone
        }
    }
    

}//TableViewController

//QueryModel의 포로토콜을 dusrufgkrl
extension TableViewController:QueryModelProtocol{
    func itemDownloaded(items:[DBModel]){
        feedItem = items
        //화면 재구성
        self.listTableView.reloadData()
    }
}
