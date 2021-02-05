//
//  MoreViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 28/1/21.
//

import UIKit

class MoreViewCell: UITableViewCell {

    @IBOutlet weak var setViewimg: UIView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lbOrder: UILabel!
    @IBOutlet weak var lbmenu: UILabel!

    @IBOutlet weak var setimgMenu: UIImageView!
  
    var data: [String:String]?  {
        didSet {
            guard let data = data else { return }
            self.lbOrder.text = data["More"]
          
        }
    }
    var menu: [String:String]?  {
        didSet {
            guard let data = menu else { return }
          
            self.lbmenu.text = data["Menu"]
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        self.setViewimg.clipsToBounds = true
        self.setViewimg.layer.cornerRadius = 20
    //    self.setView.layer.shadowOpacity = 0.3
        self.setViewimg.layer.shadowRadius = 70
        self.setViewimg.layer.masksToBounds = false
    }
    }


