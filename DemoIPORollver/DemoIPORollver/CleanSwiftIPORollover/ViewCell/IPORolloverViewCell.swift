//
//  IPORolloverViewCell.swift
//  DemoIPORollver
//
//  Created by BUSSNQ TH on 22/1/21.
//

import UIKit

class IPORolloverViewCell: UITableViewCell {
    @IBOutlet weak var setView: UIView!
    @IBOutlet weak var lbfundcode: UILabel!
    @IBOutlet weak var lbchnfname: UILabel!
    @IBOutlet weak var lbipoRollOver: UILabel!
    @IBOutlet weak var lbOfferExpire: UILabel!
    @IBOutlet weak var imgLgpic: UIImageView!
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
