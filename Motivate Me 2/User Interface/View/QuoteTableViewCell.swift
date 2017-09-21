//
//  QuoteTableViewCell.swift
//  Motivate Me 2
//
//  Created by Kazutaka Homma on 9/22/17.
//  Copyright © 2017 Kazutaka Homma. All rights reserved.
//

import UIKit

class QuoteTableViewCell: UITableViewCell {

    @IBOutlet private weak var quoteLabel: UILabel!
    @IBOutlet private weak var authorLabel: UILabel!
    
    var quote: Quote? {
        didSet{
            quoteLabel.text = quote?.text
            authorLabel.text = quote?.author
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
