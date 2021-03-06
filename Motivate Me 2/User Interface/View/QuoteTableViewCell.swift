//
//  QuoteTableViewCell.swift
//  Motivate Me 2
//
//  Created by Kazutaka Homma on 9/22/17.
//  Copyright © 2017 Kazutaka Homma. All rights reserved.
//

import UIKit

class QuoteTableViewCell: UITableViewCell {

    @IBOutlet private weak var quoteLabel: UILabel?
    @IBOutlet private weak var authorLabel: UILabel?
    
    static let cellID = "QuoteTableViewCell"
    var quote: Quote? {
        didSet {
            quoteLabel?.text = quote?.text
            authorLabel?.text = quote?.source
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        quoteLabel?.text = quote?.text
        authorLabel?.text = quote?.source
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        
    }
}
