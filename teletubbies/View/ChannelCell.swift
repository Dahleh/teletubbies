//
//  ChannelCell.swift
//  teletubbies
//
//  Created by Faris Dahleh on 4/28/18.
//  Copyright © 2018 Faris Dahleh. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    @IBOutlet var channelName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        }else{
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
        
        // Configure the view for the selected state
    }
    
    func configureCell(channel: Channel){
        let title = channel.channelTitle ?? ""
        channelName.text = "#\(title)"
    }

}
