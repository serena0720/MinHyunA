//
//  ViewController.swift
//  Alert
//
//  Created by TJ on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lampImage: UIImageView!
    
    // 사용할 이미지 준비
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgRemove = UIImage(named: "lamp_remove.png")
    
    // 이미지 상태
    var isLampOn = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImage.image = imgOn
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if isLampOn {
            // Lamp가 On상태인데 켜기 버튼을 눌렀을 경우
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태 입니다.", preferredStyle: .alert)
            
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            
            present(lampOnAlert, animated: true, completion: nil)
        }else{
            // Lamp가 Off나 Remove 상태인데 켜기 버튼을 눌렀을 경우
            lampImage.image = imgOn
            isLampOn = true
        }
        
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn{
            // Lamp가 On상태인데 끄기 버튼을 눌렀을 경우
            let lampOffAlert = UIAlertController(title: "램프끄기", message: "램프을 끄겠습니까?", preferredStyle: .alert)
            
            let offAction = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.lampImage.image = self.imgOff
                self.isLampOn = false
            })
            let cancelAction = UIAlertAction(title: "아니오", style: .destructive, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)

        }else{
            // Lamp가 Off상태인데 끄기 버튼을 눌렀을 경우
            let lampOffAlert = UIAlertController(title: "경고", message: "현재 Off 상태 입니다.", preferredStyle: .alert)
            
            let offAction = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            
            present(lampOffAlert, animated: true, completion: nil)

        }
        
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프제거?", message: "램프를 제거할까요?", preferredStyle: .alert)
        
        let offAction = UIAlertAction(title: "아니오, 끕니다.", style: .default, handler: {ACTION in
            self.lampImage.image = self.imgOff
            self.isLampOn = false
        })
        let onAction = UIAlertAction(title: "아니오, 켭니다.", style: .default, handler: {ACTION in
            self.lampImage.image = self.imgOn
            self.isLampOn = true
        })
        let removeAction = UIAlertAction(title: "네, 제거합니다.", style: .default, handler: {ACTION in
            self.lampImage.image = self.imgRemove
            self.isLampOn = false
        })

        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        
        present(lampRemoveAlert, animated: true, completion: nil)

    }
    
}// ViewController

