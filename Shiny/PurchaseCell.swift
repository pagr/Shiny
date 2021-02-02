//
//  PurchaseCell.swift
//  Shiny
//
//  Created by Mert Avci on 2021-02-02.
//

import UIKit

class PurchaseCell: UITableViewCell {
    
    static let identifier = "purchasCellIdentifier"

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(title: String) {
        self.titleLabel.text = title
    }
}
