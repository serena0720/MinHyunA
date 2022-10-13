//
//  CollectionViewController.swift
//  CollectionViewAnimal_LabelPicture
//
//  Created by Hyun A Song on 2022/09/18.
//

import UIKit

private let reuseIdentifier = "Cell"

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblname: UILabel!
    
    var dataArray: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataInit()
        
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
    
    //Detail View에 Data 넘기기 // Message 파일 만들어서 정보 공유
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sgDetail"{
            let cell = sender as! CollectionViewCell // 정보를 받아오는 sender를 collectionViewCell 타입으로 바꿔서 정보 받기
            let indexPath = collectionView.indexPath(for: cell)
            Message.animalImage = dataArray[indexPath!.row].animalImageFile // message의 내용이 여기의 어떤 내용인지 알려준거
        }
    }


}// CollectionViewController


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    // Cell 구성
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell// dequeue-> 어싱크, 재활용 // as! 타입 변경
        cell.imgView.image = UIImage(named : dataArray[indexPath.row].animalImageFile)
        cell.lblView.text = Message.name
        return cell
    }
    
    
    // Cell의 갯수를 알려준다
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // Cell Event : 셀 누르면 동작 시키기
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
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
