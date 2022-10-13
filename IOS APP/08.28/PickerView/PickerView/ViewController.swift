//
//  ViewController.swift
//  PickerView
//
//  Created by Hyun A Song on 2022/08/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageFileName = ["w1.jpg","w2.jpg","w3.jpg","w4.jpg","w5.jpg","w6.jpg","w7.jpg","w8.jpg","w9.jpg","w10.jpg"]
    
    var imageArray = [UIImage?]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이미지를 배열 넣기
        for i in 0..<10{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
        
        
        //아래 extension한것을 정의. 함수 없으면 연장한거 실행 안됨, 유의하기
        pickerImage.dataSource = self
        pickerImage.delegate = self
        
    }// 시용안함. 벨리게이트 익스텐션으로 처리함.

} // viewController

//datasource : pickerview의 외형타입
extension ViewController: UIPickerViewDataSource{
    //pickerview의 컬럼 갯수 (한개의 행 즉 한개의 뭉텅이)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    //picker viewdml row갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
}

//delegate : pickerview의 데이터를 집어넣기. 액션 부분.
extension ViewController: UIPickerViewDelegate{
    /*
    //pickerview에 파일 이름 넣기 : titleForRow로 검색
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
     */
    
    //pickerViewdp Themnail 배치 : viewforrow로 검색
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row]) //이미 앞에 그림을 만들어놨기때문에 굳이 다시 안함
        imageView.frame = CGRect(x: 0, y:0, width: 50, height: 20) //컴퓨터그래픽내에 좌표 설정
        return imageView
    }
    
    
    //pickerview row 선택한 결과를 액션 시캐기 : didselectRow로 검색
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imageView.image = imageArray[row]
    }
}

