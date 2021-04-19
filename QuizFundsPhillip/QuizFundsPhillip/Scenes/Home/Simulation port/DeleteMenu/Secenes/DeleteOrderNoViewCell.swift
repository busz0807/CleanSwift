//
//  DeleteOrderNoViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 29/3/21.
//

import UIKit
protocol CellDelegagte {
    func CellbtnTap(index: IndexPath, number: Int)
}
class DeleteOrderNoViewCell: UITableViewCell {
    var datagetHistory: DataGetHistoryModel?
    var number: Int?
    var delegate: CellDelegagte?
    var index: IndexPath = []
    @IBOutlet weak var lbnavdate: UILabel!
    @IBOutlet weak var labelbuyandsell: UILabel!
    @IBOutlet weak var lbnav: UILabel!
    @IBOutlet weak var lbvalue: UILabel!
    @IBOutlet weak var btndelete: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
 
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if self.datagetHistory?.ordertype ?? "" == "Buy" {
            self.labelbuyandsell.text = "ซื้อ"
        } else if self.datagetHistory?.ordertype ?? "" == "Sell" {
            self.labelbuyandsell.text = "ขาย"
        }
        self.lbnav.text = "\(self.datagetHistory?.unitPrice ?? 0)"
        self.lbvalue.text = "\(self.datagetHistory?.units ?? 0)"
        let image = UIImage(named: "delete")
        let tintImage = image?.withRenderingMode(.alwaysTemplate)
        btndelete.setImage(tintImage, for: .normal)
        btndelete.tintColor = .red
      
        // Configure the view for the selected state
    }

    @IBAction func btnactiondelete(_ sender: Any) {
        delegate?.CellbtnTap(index: index, number: (index.row) )
    }
}
