//
//  FriendCell.swift
//  HW2-1
//
//  Created by 최영재 on 15/05/2020.
//  Copyright © 2020 최영재. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    static let identifier: String = "FriendCell"
    
    @IBOutlet weak var friendImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setfriendsInformation(profileimage : String, name : String, profile : String){
        friendImageView.image = UIImage(named: profileimage)
       nameLabel.text = name
        profileLabel.text = profile
    }
}
