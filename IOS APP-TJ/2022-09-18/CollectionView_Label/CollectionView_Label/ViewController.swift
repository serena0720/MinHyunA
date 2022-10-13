//
//  ViewController.swift
//  CollectionView_Label
//
//  Created by Kenny on 2022/09/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Data 생성
        dataInit()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func dataInit(){
        dataArray.append("유비")
        dataArray.append("관우")
        dataArray.append("장비")
        dataArray.append("여포")
        dataArray.append("조조")
        dataArray.append("동탁")
        dataArray.append("초선")
        dataArray.append("손견")
        dataArray.append("장양")
        dataArray.append("손책")
        
        // Temp
        dataArray.append("유비")
        dataArray.append("관우")
        dataArray.append("장비")
        dataArray.append("여포")
        dataArray.append("조조")
        dataArray.append("동탁")
        dataArray.append("초선")
        dataArray.append("손견")
        dataArray.append("장양")
        dataArray.append("손책")

    }
    
    // Detail view에 Data 넘기기
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgDetail"{
            let cell = sender as! CollectionViewCell
            let indexPath = collectionView.indexPath(for: cell)
            Message.name = dataArray[indexPath!.row]
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        appendData()
        collectionView.reloadData()
    }

    func appendData(){
        if Message.check == "New"{
            dataArray.append(Message.name)
            Message.check = "Old"
        }
    }
    

}// ViewController

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    // Cell 갯수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // cell 구성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .lightGray
        cell.lblHuman.text = dataArray[indexPath.row]
        cell.lblHuman.backgroundColor = .yellow
        
        return cell
    }
    
    // click event
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(dataArray[indexPath.row])
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    // 위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    // 좌우 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    // cell 크기
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3 - 1
        let size = CGSize(width: width, height: width)
        
        return size
    }
    
}








