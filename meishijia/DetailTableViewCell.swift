//
//  DetailTableViewCell.swift
//  meishijia
//
//  Created by jack on 17/2/8.
//  Copyright © 2017年 jack. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var tupian: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var didian: UILabel!
    @IBOutlet weak var leixing: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
