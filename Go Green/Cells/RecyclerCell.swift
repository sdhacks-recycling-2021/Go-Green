//
//  RecyclerCell.swift
//  Go Green
//
//  Created by Alan Cao on 2/21/21.
//

import UIKit

class RecyclerCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
