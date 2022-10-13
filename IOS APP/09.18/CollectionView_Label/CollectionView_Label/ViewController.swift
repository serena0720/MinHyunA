//
//  ViewController.swift
//  CollectionView_Label
//
//  Created by Hyun A Song on 2022/09/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var horCollectionView: UICollectionView!
    
    var dataArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Data를 생섣
        dataInit()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func dataInit(){
        dataArray.append("유비")
        dataArray.append("장비")
        dataArray.append("관우")
        dataArray.append("여포")
        dataArray.append("조조")
        dataArray.append("동탁")
        dataArray.append("초선")
        dataArray.append("손견")
        dataArray.append("장양")
        dataArray.append("손책")
        
        // Temp. 데이터가 많으면 자동 스크롤 가능 // main에서 scroll 방향 정할 수 있음
        dataArray.append("유비")
        dataArray.append("장비")
        dataArray.append("관우")
        dataArray.append("여포")
        dataArray.append("조조")
        dataArray.append("동탁")
        dataArray.append("초선")
        dataArray.append("손견")
        dataArray.append("장양")
        dataArray.append("손책")
    }

    //Detail View에 Data 넘기기 // Message 파일 만들어서 정보 공유
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgDetail"{
            let cell = sender as! CollectionViewCell // 정보를 받아오는 sender를 collectionViewCell 타입으로 바꿔서 정보 받기
            let indexPath = collectionView.indexPath(for: cell)
            Message.name = dataArray[indexPath!.row] // message의 내용이 여기의 어떤 내용인지 알려준거
        }
    }
    
    // Message에 넣은 데이터 가져오기
    override func viewWillAppear(_ animated: Bool) {
        appendData()
        collectionView.reloadData() // 이거 안하면 업데이트가 안됨
    }
    
    func appendData(){
        if Message.check == "New"{
            dataArray.append(Message.name)
            Message.check = "Old"
        }
    }
    
} // ViewController

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    // Cell의 갯수를 알려준다
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // Cell 구성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell// dequeue-> 어싱크, 재활용 // as! 타입 변경
        cell.backgroundColor = .lightGray
        cell.lblHuman.text = dataArray[indexPath.row]// collectionViewCell 에 있는 값이기 때문에 가져올 수 있다.
        cell.lblHuman.backgroundColor = .yellow
        
        return cell
    }
    
    // Cell Event : 셀 누르면 동작 시키기
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(dataArray[indexPath.row])
    }
    //만약 페이지를 나눠서 셀을 동작시키려면 각 셀에 동작을 다르게 동작 넣어서 사용 가능.
}

extension ViewController: UICollectionViewDelegateFlowLayout{ // 화면 간격 배치
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
