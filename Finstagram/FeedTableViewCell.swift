//
//  FeedTableViewCell.swift
//  Finstagram
//
//  Created by Vineeth Puli on 10/3/17.
//  Copyright © 2017 RUMAD. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var feedImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(feedUsername: String, feedImage: UIImage) {
        userNameLabel.text = feedUsername
        feedImageView.image = feedImage
        
    }

}
