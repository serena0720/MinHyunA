//
//  ViewController.swift
//  02.LampOnOff
//
//  Created by Hyun A Song on 2022/09/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLight: UIImageView!
    
    //사용할 이미지 준비
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgRemove = UIImage(named: "lamp_remove.png")
    //self는 class안에 있는 전역 변수에만 사용 가능.func안에서 겹쳐서 사용하다보면 변수의 위치를 헷갈려해서 알려주는것.
    
    //첫화면 이미지 상태
    var isLampOn = true
    //이거로 if 구문 사용
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgLight.image = imgOn // 이미지 조건은 이런식을 시용
    }

    @IBAction func btnOn(_ sender: UIButton) {
        if isLampOn {
            //램프가 On 상태, 켜기 버튼을 눌렀을 때.
            let alertOn = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: .alert)
            let actionOn = UIAlertAction(title: "네. 알겠습니다.", style: .default, handler: nil)
            
            alertOn.addAction(actionOn)
            
            present(alertOn, animated: true, completion: nil)
        }else{
            //램프가 off 상태. 켜기 버튼을 눌렀을 때.
            imgLight.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func btnOff(_ sender: UIButton) {
        if isLampOn{
            //Lamp가 On상태. 끄기 버튼을 누르는 경우
            let alertOff = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: .alert)
            let actionOff = UIAlertAction(title: "네", style: .default, handler: {ACTION in
                self.imgLight.image = self.imgOff
                self.isLampOn = false
            })
            let actionOff2 = UIAlertAction(title: "아니요", style: .destructive, handler: nil)
            
            alertOff.addAction(actionOff)
            alertOff.addAction(actionOff2)
            
            present(alertOff, animated: true, completion: nil)
        }else{
            //Lamp가 off상태. 끄기 버튼을 누르는 경우
        let alertOff = UIAlertController(title: "경고", message: "현재 off 상태 입니다.", preferredStyle: .alert)
        let actionOff = UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil
        )

        alertOff.addAction(actionOff)
        
        present(alertOff, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        let alertRemove = UIAlertController(title: "램프 제거?", message: "램프를 제거할까요?", preferredStyle: .alert)
        let actionRemove1 = UIAlertAction(title: "아니요, 끕니다!", style: .default, handler: {ACTION in
            self.imgLight.image = self.imgOff
            self.isLampOn = false
        })
        let actionRemove2 = UIAlertAction(title: "아니요, 켭니다!", style: .default, handler: {ACTION in
            self.imgLight.image = self.imgOn
            self.isLampOn = true
        })
        let actionRemove3 = UIAlertAction(title: "네, 제거 합니다!", style: .cancel, handler: {ACTION in
            self.imgLight.image = self.imgRemove
            self.isLampOn = false
        })
        
        alertRemove.addAction(actionRemove1)
        alertRemove.addAction(actionRemove2)
        alertRemove.addAction(actionRemove3)
        
        present(alertRemove, animated: true, completion: nil)
    }
}//ViewController

