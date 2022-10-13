//
//  TableViewController.swift
//  ServerJson_table
//
//  Created by Hyun A Song on 2022/09/18.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var listTableView: UITableView!
    
    var feedItem: [DBModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let queryModel = QueryModel() //1. QueryModel이 클래스여서 인스턴스로 불러야함
        queryModel.delegate = self // 프로토콜 확장한 것 부르기
        queryModel.downloadItems() // 확장한 프로토콜안에 정의한 펑션 불러서 정보 모으기
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

    //화면 모양을 만들 수 있다.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.text = "성명 : \(feedItem[indexPath.row].sname)"
        content.secondaryText = "학번 : \(feedItem[indexPath.row].scode)"

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} // TableViewController

extension TableViewController: QueryModelProtocol{ // 새로 만든 프로토콜을 불러온다.
    func itemDownloaded(items: [DBModel]){
        feedItem = items
        self.listTableView.reloadData() // async이기 때문에 테이터가 서로 언제 어떻게 준비될지 모름. 서로 순서 정리를 위해 데이터가 준비되면 그떄 reload
    }
}
