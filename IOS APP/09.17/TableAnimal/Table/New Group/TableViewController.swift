//
//  TableViewController.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionList: UICollectionView!
    
    var dataArray: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()
        
        //Edit 버튼을 생성하고 삭제 기능 추가하기, 왼쪽 배치
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //그림 부르기
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    func dataInit(){
        dataArray.append(Animal(name: "벌", animalImageFile: "bee", sort: "파충류", fly: true))
        dataArray.append(Animal(name: "고양이", animalImageFile: "cat", sort: "포유류", fly: false))
        dataArray.append(Animal(name: "젖소", animalImageFile: "cow", sort: "포유류", fly: false))
        dataArray.append(Animal(name: "강아지", animalImageFile: "dog", sort: "포유류", fly: false))
        dataArray.append(Animal(name: "여우", animalImageFile: "fox", sort: "포유류", fly: false))
        dataArray.append(Animal(name: "원숭이", animalImageFile: "monkey", sort: "영장류", fly: false))
        dataArray.append(Animal(name: "돼지", animalImageFile: "pig", sort: "포유류", fly: false))
        dataArray.append(Animal(name: "늑대", animalImageFile: "wolf", sort: "포유류", fly: false))
    }
    
    // MARK: - Table view data source //외형
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

        // Configure the cell...
        cell.textLabel?.text = dataArray[indexPath.row].name // 배열 속 데이터의 순서는 indexPath.row를 통해 알 수 있다.
        cell.imageView?.image = UIImage(named: dataArray[indexPath.row].animalImageFile)
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
            let indexPath = collectionList.indexPath(for: cell)
            //type을 정해놓은 정보를 다시 string으로 전환해주기
            Message.name = dataArray[indexPath!.row].name
            Message.animalImage = dataArray[indexPath!.row].animalImageFile
            Message.sort = dataArray[indexPath!.row].sort
            Message.fly = String(dataArray[indexPath!.row].fly)
        }
    }
    

}// TableViewController

extension TableViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    // Cell 구성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell// dequeue-> 어싱크, 재활용 // as! 타입 변경
        cell.imgView.image = UIImage(named : dataArray[indexPath.row])
        return cell
    }
    
    
    // Cell의 갯수를 알려준다
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // Cell Event : 셀 누르면 동작 시키기
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(dataArray[indexPath.row])
    }
    //만약 페이지를 나눠서 셀을 동작시키려면 각 셀에 동작을 다르게 동작 넣어서 사용 가능.
}

extension TableViewController: UICollectionViewDelegateFlowLayout{ // 화면 간격 배치
    // 위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1 // 픽셀 단위
    }
    
    // 좌 우 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    // Cell 크기
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3 - 1 // 간격 픽셀 1 때문에 -1
        let size = CGSize(width: width, height: width) // 정사각형 모양으로
        
        return size
    }
}
