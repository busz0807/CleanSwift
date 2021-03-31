//
//  BankingViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 18/2/21.
//

import UIKit

class BankingViewCell: UITableViewCell {

    @IBOutlet weak var imgBanking: UIImageView!
    @IBOutlet weak var lbBanking: UILabel!
    @IBOutlet weak var btnBanking: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnActionBanking(_ sender: Any) {
    }
}
