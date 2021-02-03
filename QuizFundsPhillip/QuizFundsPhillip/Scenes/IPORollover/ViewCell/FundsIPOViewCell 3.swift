//
//  FundsIPOViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 28/1/21.
//

import UIKit

class FundsIPOViewCell: UITableViewCell {
    var data: FundIPORolloverDataModels?  {
        didSet {
            guard let data = data else { return }
//            Label.text = data
            lbfundcode.text = data.fundcode
            lbchnfname.text = data.chnfname
            lbipoRollOver.text = data.ipoRollOver
            lbOfferExpire.text = "\(data.ipoOfferDate2 ?? "") - \(data.ipoExpireDate2 ?? "" )"
            let imageURL = data.lgpic ?? ""
                let url = URL(string: imageURL)
            imgLgpic.sd_setImage(with: url,  placeholderImage: UIImage(named: "Image"))
        }
    }

    @IBOutlet weak var setView: UIView!
    @IBOutlet weak var setImg: UIImageView!
    @IBOutlet weak var lbfundcode: UILabel!
    @IBOutlet weak var lbchnfname: UILabel!
    @IBOutlet weak var lbipoRollOver: UILabel!
    @IBOutlet weak var lbOfferExpire: UILabel!
    @IBOutlet weak var imgLgpic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
  
        self.setView.clipsToBounds = true
        self.setView.layer.cornerRadius = 5
        self.setView.layer.shadowColor = UIColor.systemGray.cgColor
        self.setView.layer.shadowOpacity = 0.5
        self.setView.layer.shadowRadius = 6
        self.setView.layer.masksToBounds = false
 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
