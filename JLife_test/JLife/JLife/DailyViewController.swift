//
//  DailyViewController.swift
//  JLife
//
//  Created by 오정은 on 2022/11/03.
//

import UIKit

class DailyViewController: UIViewController {

    
    @IBOutlet weak var cvTimeLine: UICollectionView!
    
    var timeArray:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,1,2,3,4,5,6,7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        // Do any additional setup after loading the view.
        cvTimeLine.delegate = self
        cvTimeLine.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}//viewcontroller

//extension

extension DailyViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return timeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.lblTime.text = String(timeArray[indexPath.row])
        
        //하단에 라인을 주기 위해 layer 설정
        let bottomline = CALayer()
        bottomline.frame = CGRect(x: 0 , y: cell.frame.size.height - 1.5 , width: UIScreen.main.bounds.width , height: 1.5)
        bottomline.backgroundColor = UIColor.darkGray.cgColor
        //설정한 layer 해당 셀에 넣기
        cell.layer.addSublayer(bottomline)
        
        return cell
    }
}

extension DailyViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        let width = collectionView.bounds.width
        let height = collectionView.bounds.height / 6
        let size = CGSize(width: width, height: height)
        return size
    }
}//extension
