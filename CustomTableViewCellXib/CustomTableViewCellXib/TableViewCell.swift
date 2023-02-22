//
//  TableViewCell.swift
//  CustomTableViewCellXib
//
//  Created by Feynman · on 2023/2/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageContainer: UIImageView!
    
    @IBOutlet weak var lblLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
