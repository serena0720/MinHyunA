//
//  ViewController.swift
//  CollectionView_Image
//
//  Created by Hyun A Song on 2022/09/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataInit()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func dataInit(){
        dataArray.append("flower_01.png")
        dataArray.append("flower_02.png")
        dataArray.append("flower_03.png")
        dataArray.append("flower_04.png")
        dataArray.append("flower_05.png")
        dataArray.append("flower_06.png")
    }
    //Detail View에 Data 넘기기 // Message 파일 만들어서 정보 공유
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgDetail"{
            let cell = sender as! CollectionViewCell // 정보를 받아오는 sender를 collectionViewCell 타입으로 바꿔서 정보 받기
            let indexPath = collectionView.indexPath(for: cell)
            Message.image = dataArray[indexPath!.row] // message의 내용이 여기의 어떤 내용인지 알려준거
        }
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
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
