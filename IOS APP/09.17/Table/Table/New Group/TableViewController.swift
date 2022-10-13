//
//  TableViewController.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/17.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView! // tableview를 연결해야함 잘 체크하기
    
    
    var dataArray: [TodoList] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Long Press : 꾹 누르면 작동
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(sender:))) // selector는 objectC
        tvListView.addGestureRecognizer(longPress)
        
        
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //Edit 버튼을 생성하고 삭제 기능 추가하기, 왼쪽 배치
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    
    func dataInit(){
        dataArray.append(TodoList(items: "책 구매", itemsImageFile: "cart.png"))
        dataArray.append(TodoList(items: "친구 약속", itemsImageFile: "clock.png"))
        dataArray.append(TodoList(items: "스터디", itemsImageFile: "pencil.png"))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        appendData()
        tvListView.reloadData() // 배열을 갖고 화면 재구성을 한다.
    }
    
    //dataArray에 내용 추가
    func appendData(){
        if Message.check == "New"{
            dataArray.append(TodoList(items: Message.item, itemsImageFile: Message.itemsImageFile))
            Message.check = "Old"
        }
    }
    
    // Long Press 작동을 위한 함수
    @objc func handleLongPress(sender: UILongPressGestureRecognizer){
        if sender.state == .began{
            let touchPoint = sender.location(in: tableView)
            if tvListView.indexPathForRow(at: touchPoint) != nil{
                let touchNumber = tvListView.indexPathForRow(at: touchPoint)![1] // 0번째에 큰섹션의 값이 나옴(현재는 1로 나눴기때문에 1차원만 존재)
                //print("Long Pressed", touchNumber)
                alertDialog(touchNumber)
            }
        }
    }
    
    func alertDialog(_ touchNumber: Int){
        let addAlert = UIAlertController(title: "Todo List", message: "수정할 내용을 입력하세요", preferredStyle: .alert) // alert는 팝업창/ actionsheet는 하단 팝업
        //팝업창 안에 텍스트 필드 넣기
        addAlert.addTextField{addText in // addText가 변수명
            addText.text = self.dataArray[touchNumber].items // func 안에서 정의한 것이기 때문에 self
            //print(addAlert.textFields)
        }
        //팝업창 안에 cancel/okay action
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        let okAction = UIAlertAction(title: "수정", style: .default, handler: {ACTION in
            self.dataArray[touchNumber].items = addAlert.textFields![0].text!
            self.tvListView.reloadData()
        })
        
        addAlert.addAction(cancelAction)
        addAlert.addAction(okAction)
        
        present(addAlert, animated: true, completion: nil)
    }
    
    
    
    

    // MARK: - Table view data source //외렴
    // 보통은 섹션이 1개(안그러면 화면 나뉨)
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    //섹션당 열의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    //셀의 구성 정의/ 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) // 셀 이름 바꿨으니까 myCell

        //하기 내용 수정될 예정
        /*
        // Configure the cell...
        cell.textLabel?.text = dataArray[indexPath.row].items // 배열 속 데이터의 순서는 indexPath.row를 통해 알 수 있다.
        cell.imageView?.image = UIImage(named: dataArray[indexPath.row].itemsImageFile)
         */
        var content = cell.defaultContentConfiguration() // 직접 넣는 것이 아닌 새로 정의해서 사용해야함
        content.text = dataArray[indexPath.row].items
        content.image = UIImage(named: dataArray[indexPath.row].itemsImageFile)
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

    // Table 삭제 기능 추가하기
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            dataArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // 삭제시 delete가 아닌 "삭제"로 바꾸기
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
    return "삭제"
    }
    
    
    // Table list 순서 바꾸기
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let itemToMove = dataArray[fromIndexPath.row]
        dataArray.remove(at: fromIndexPath.row)
        dataArray.insert(itemToMove, at: to.row)
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // 이동 시 어떻게 할지 정하는 것
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //몇번째 셀을 선택하여, 어떤 내용이 있는지
        if segue.identifier == "sgDetail"{
            let cell = sender as! UITableViewCell
            let indexPath = tvListView.indexPath(for: cell)
            Message.item = dataArray[indexPath!.row].items
        }
    }
    

}
