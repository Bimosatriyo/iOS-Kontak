//
//  ContactTableViewCell.swift
//  AppKontak
//
//  Created by macintosh on 28/09/18.
//  Copyright © 2018 Bimo Satriyo. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var favouriteImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initCell()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    private func initCell() {
        self.contactImageView.layer.cornerRadius = self.contactImageView.bounds.width/2
        self.contactImageView.layer.masksToBounds = true
        
        self.favouriteImageView.image = UIImage(named: "icon_favorite_home")
    }
    
}

