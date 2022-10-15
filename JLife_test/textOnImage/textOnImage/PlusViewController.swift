//
//  PlusViewController.swift
//  textOnImage
//
//  Created by Hyun A Song on 2022/10/15.
//

import UIKit

class PlusViewController: UIViewController {

    @IBOutlet weak var lblComment: UILabel!
    @IBOutlet weak var tfComment: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnInsert(_ sender: UIButton) {
        let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "sgPlus")

        self.navigationController?.pushViewController(pushVC!, animated: true)
    }
    
    @IBAction func btnCancel(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
