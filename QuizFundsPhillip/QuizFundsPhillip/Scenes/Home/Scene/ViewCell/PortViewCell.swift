//
//  PortViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 29/1/21.
//

import UIKit

class PortViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!

    @IBOutlet weak var setView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.imgView.layer.masksToBounds = true
        self.imgView.clipsToBounds = true
        self.imgView.layer.cornerRadius = 12
        
        self.setView.clipsToBounds = true
        self.setView.layer.cornerRadius = 15
    //    self.setView.layer.shadowOpacity = 0.3
        self.setView.layer.shadowRadius = 10
        self.setView.layer.masksToBounds = false
        
    }
}

