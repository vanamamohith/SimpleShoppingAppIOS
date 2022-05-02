//
//  CategoryTableViewCell.swift
//  SimpleShopApp
//
//  Created by student on 02.02.2022.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var UIImageCell: UIImageView!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
