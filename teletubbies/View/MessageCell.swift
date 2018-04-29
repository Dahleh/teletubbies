//
//  MessageCell.swift
//  teletubbies
//
//  Created by Faris Dahleh on 4/29/18.
//  Copyright © 2018 Faris Dahleh. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    
    //Outlets
    @IBOutlet var userImg: RoundedImage!
    @IBOutlet var userLbl: UILabel!
    @IBOutlet var timeStampLbl: UILabel!
    @IBOutlet var messageBodyLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    func configureCell(message: Message){
        messageBodyLbl.text = message.message
        userLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
    }
}
