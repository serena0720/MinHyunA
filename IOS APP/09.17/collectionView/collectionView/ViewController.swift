//
//  ViewController.swift
//  collectionView
//
//  Created by Hyun A Song on 2022/09/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! // cell 은 따로 연결->collection view
    
    var dataArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataInit()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func dataInit(){
        dataArray.append("유비")
        dataArray.append("관우")
        dataArray.append("장비")
        dataArray.append("조조")
        dataArray.append("여포")
        dataArray.append("동탁")
        dataArray.append("초선")
        dataArray.append("손견")
        dataArray.append("장양")
        dataArray.append("손책")
    }
}//ViewController


//cell 몇개있고 어떤것이 있는지
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    
    // Cell의 갯수를 정하기
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
     
    
    // cell의 구성
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mycell", for: indexPath) as! CollectionViewCell// 재활용하는 셀. 자동으로 화면에 맞추어 데이터 관리
        cell.backgroundColor = .lightGray
        cell.lblHuman.text = dataArray[indexPath.row]
        cell.lblHuman.backgroundColor = .yellow
        
        return cell
    }
}

//전체적인 layout 전체적인 구성
extension ViewController:UICollectionViewDelegateFlowLayout{
    //위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1 // 1 픽셀씩 사용
    }// minimumline 이 키워드
    
    //좌 우 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }// minimuminter 이 키워드
    
    // cell size : 한 화면 안에 몇개를 넣을지
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3 - 1 //1칸씩 띄웠기 때문에 -1 꼭 넣기
        let size = CGSize(width: width, height: width)
        
        return size
    }//sixefor로 검색
}
