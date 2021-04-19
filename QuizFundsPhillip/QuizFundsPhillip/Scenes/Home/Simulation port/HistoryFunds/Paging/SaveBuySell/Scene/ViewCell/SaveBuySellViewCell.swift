//
//  SaveBuySellViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 16/3/21.
//

import UIKit

class SaveBuySellViewCell: UITableViewCell {

    @IBOutlet weak var setviewbtnbuy: UIView!
    @IBOutlet weak var lbabbreviation: UILabel!
    @IBOutlet weak var lborderdate: UILabel!
    @IBOutlet weak var lbsellandbuy: UILabel!
    @IBOutlet weak var lbamount: UILabel!
    @IBOutlet weak var lbvalue: UILabel!
    @IBOutlet weak var lbnav: UILabel!
    var dataHistory: DataGetHistoryModel?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if self.dataHistory?.ordertype == "Buy" {
            self.lbsellandbuy.text = "ซื้อ"
            self.lbsellandbuy.textColor = .white
            self.setviewbtnbuy.backgroundColor = .green
        }else {
            self.lbsellandbuy.text = "ขาย"
            self.lbsellandbuy.textColor = .white
            self.setviewbtnbuy.backgroundColor = .red
        }
        self.lbabbreviation.text = self.dataHistory?.abbreviation ?? ""
        self.lbnav.text = "\(self.dataHistory?.unitPrice ?? 0)"
        self.lbamount.text = "\(self.dataHistory?.units ?? 0)"
        let myDouble = self.dataHistory?.value ?? 0
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle = .currency
        
        let priceString = currencyFormatter.string(from: NSNumber(value: myDouble))!
        self.lbvalue.text = priceString
        
//        self.lbvalue.text = "\(self.dataHistory?.value ?? 0)"
        let dateString = self.dataHistory?.orderDate ?? ""
//                print("date", dateString)
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = dateFormatter.date(from: "\(dateString)")!

        let dateFormatterString = DateFormatter()
        dateFormatterString.dateFormat = "dd/MM/yyyy"
        let formattedDate1 = dateFormatterString.string(from: date)
        self.lborderdate.text = "\(formattedDate1)"
        // Configure the view for the selected state
        self.setviewbtnbuy.clipsToBounds = true
        self.setviewbtnbuy.layer.cornerRadius = 15
//        self.setviewbtnbuy.setTitleColor(.darkGray, for: .normal)
        self.setviewbtnbuy.layer.shadowRadius = 50
        self.setviewbtnbuy.layer.masksToBounds = false
        
    }

}
