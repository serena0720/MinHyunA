//
//  DetailViewController.swift
//  CollectionView_Label
//
//  Created by Kenny on 2022/09/18.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblHuman: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblHuman.text = Message.name
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
