//
//  TableViewController.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/04.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var tvListView: UITableView!
    
    var dataArray: [ToDoList] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()//nil안나오게끔
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        //edit 기능을 만들고 삭제 기능 추가가능하게 함. 현재 왼쪽이 배치함
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    func dataInit(){
        dataArray.append(ToDoList(items: "책 구매", itemsImageFile: "cart.png"))
        dataArray.append(ToDoList(items: "철수와 약속", itemsImageFile: "clock.png"))
        dataArray.append(ToDoList(items: "스터디 준비하기", itemsImageFile: "pencil.png"))
    }
    
    //데이터 추가 후 내용 불러오기
    override func viewWillAppear(_ animated: Bool) {
        appendData()
        tvListView.reloadData() // 화면을 자동적으로 구성
    }
    
    //데이터가 없을땐 동작 안하게 제한하여 열 추가
    func appendData(){
        if Message.check == "New"{
        dataArray.append(ToDoList(items: Message.item, itemsImageFile: Message.itemsImageFile))
            Message.check = "Old"
    }

    // MARK: - Table view data source

    //보통은 테이블안에 섹션이 1개
        func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    //섹션당 열의 갯수
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    //샐구성
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = dataArray[indexPath.row].items //dataarray중 인덱스 줄중에서 items 줄이다.
        cell.imageView?.image = UIImage(named: dataArray[indexPath.row].itemsImageFile)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    //edit의 cell delete기능 활성화
    // Override to support editing the table view.
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    //titlefordelete로 검색 : delet를 한글 삭제로 변경
        func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }

    //edit눌렀을때 목록 순서 바꾸기 가능하게 함.
    // Override to support rearranging the table view.
        func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        //이동할 item의 복사
        let itemToMove = dataArray[fromIndexPath.row]
        //이동할 item의 원래 내용 삭제
        dataArray.remove(at: fromIndexPath.row)
        //이동한 item을 삽입
        dataArray.insert(itemToMove, at: to.row)
    }
    

    //data 넘기기
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgDetail"{
            let cell = sender as! UITableViewCell //몇번째를 선택한 것인지
            let indexPath = tvListView.indexPath(for: cell)
            
            let detailView = segue.destination as! DetailViewController
            detailView.receiveItem = dataArray[indexPath!.row].items
            
        }
    }

}
}
