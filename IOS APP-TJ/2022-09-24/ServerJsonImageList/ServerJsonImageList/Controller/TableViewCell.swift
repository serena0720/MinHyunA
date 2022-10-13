//
//  TableViewCell.swift
//  ServerJsonImageList
//
//  Created by Kenny Hahn on 2022/06/01.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var jsonImage: UIImageView!
    
    @IBOutlet weak var jsonTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
