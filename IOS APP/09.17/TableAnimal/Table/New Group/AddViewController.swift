//
//  AddViewController.swift
//  Table
//
//  Created by Hyun A Song on 2022/09/17.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var tfAddItem: UITextField!
    @IBOutlet weak var pkImage: UIPickerView!
    @IBOutlet weak var imgIcon: UIImageView!
        
    var imageFileName = ["cart","clock","pencil"]
    var imageArray = [UIImage?]()
    
    var filename = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // pickerView
        for i in 0..<imageFileName.count{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        //첫화면에 떠있는 pickerview 사진
        imgIcon.image = imageArray[0]
        //아래 extension한것을 정의. 함수 없으면 연장한거 실행 안됨, 유의하기
        pkImage.dataSource = self
        pkImage.delegate = self
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        if tfAddItem.text!.isEmpty{
            Message.check = "Old"
        }else{
            Message.check = "New"
            Message.item = tfAddItem.text!
            Message.itemsImageFile = filename
        }
        tfAddItem.text = ""
        navigationController?.popViewController(animated: true) // 이동하면서 화면을 지움
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}// viewController


//datasource : pickerview의 외형타입
extension AddViewController: UIPickerViewDataSource{
    //pickerview의 컬럼 갯수 (한개의 행 즉 한개의 뭉텅이)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        // 맨위에 letdmfh piver_view_column 정의하여 사용할 수도 있음.
    }

    
    //picker viewdml row갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
}

//delegate : pickerview의 데이터를 집어넣기. 액션 부분.
extension AddViewController: UIPickerViewDelegate{
    
    //pickerview에 파일 이름 넣기 : titleForRow로 검색
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imageFileName[row]
    }
     
    /*
    //pickerViewdp Themnail 배치 : viewforrow로 검색
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row]) //이미 앞에 그림을 만들어놨기때문에 굳이 다시 안함
        imageView.frame = CGRect(x: 0, y:0, width: 50, height: 20) //컴퓨터그래픽내에 좌표 설정
        return imageView
    }
     */
    
    
    //pickerview row 선택한 결과를 액션 시캐기 : didselectRow로 검색
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgIcon.image = imageArray[row]
    }

}
