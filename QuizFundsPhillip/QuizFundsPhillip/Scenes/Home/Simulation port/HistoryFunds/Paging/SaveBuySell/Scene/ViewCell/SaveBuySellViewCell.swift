//
//  SaveBuySellViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 16/3/21.
//

import UIKit

class SaveBuySellViewCell: UITableViewCell {

    @IBOutlet weak var setviewbtnbuy: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        self.setviewbtnbuy.clipsToBounds = true
        self.setviewbtnbuy.layer.cornerRadius = 15
//        self.setviewbtnbuy.setTitleColor(.darkGray, for: .normal)
        self.setviewbtnbuy.layer.shadowRadius = 50
        self.setviewbtnbuy.layer.masksToBounds = false
    }

}
