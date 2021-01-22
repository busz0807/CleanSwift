//
//  IPORolloverViewCell.swift
//  IPOandRollover
//
//  Created by BUSSNQ TH on 21/1/21.
//

import UIKit

class IPORolloverViewCell: UITableViewCell {

    @IBOutlet weak var setView: UIView!
    @IBOutlet weak var lbfundcode: UILabel!
    @IBOutlet weak var lbchnfname: UILabel!
    @IBOutlet weak var imgSmpic: UIImageView!
    @IBOutlet weak var lbiPORollover: UILabel!
    @IBOutlet weak var lbOfferExpire: UILabel!
    var displayiPORollver: IPORolloverData!
//    var displayiPORollver: IPORolloverModel.DisplayIPORollove? {
//        didSet {
//            guard let displayipoRollover = displayiPORollver else { return }
//            self.lbfundcode.text = displayipoRollover.fundcode
//            self.lbchnfname.text = displayipoRollover.chnfname
//            self.lbiPORollover.text = displayipoRollover.ipoRollOver
////            if let url = URL(string: displayipoRollover.smpic ?? "") {
//                self.imgSmpic.sd_setImage(with: url, completed: nil)
////            }
//            self.lbOfferExpire.text = "\(displayipoRollover.ipoOfferDate2 ?? "") - \(displayipoRollover.ipoExpireDate2 ?? "")"
//
//        }
//    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setView.clipsToBounds = true
        self.setView.layer.cornerRadius = 10
        self.setView.layer.shadowColor = UIColor.gray.cgColor
        self.setView.layer.shadowOpacity = 0.3
        self.setView.layer.shadowOffset = CGSize(width: 0, height: 20)
        self.setView.layer.shadowRadius = 5
        self.setView.layer.masksToBounds = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
