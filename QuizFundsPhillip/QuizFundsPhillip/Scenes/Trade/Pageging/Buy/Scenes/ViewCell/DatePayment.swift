//
//  DatePayment.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 16/2/21.
//

import UIKit
protocol DidtapSecondPayment {
    func onClickSecondPayment(index: Int)
}
class DatePayment: UITableViewCell {

   
    var list: String = ""
    var datepayment: String = ""
    var datefunds: String = ""

    
    @IBOutlet weak var lbpayment: UILabel!
    @IBOutlet weak var lbdate: UILabel!
    
    @IBAction func btnpayment(_ sender: Any) {
    didtap?.onClickSecondPayment(index: (index?.row)!)
    }
    @IBAction func btncanlender(_ sender: Any) {
    didtap?.onClickSecondPayment(index: (index?.row)!)
     }
    var didtap: DidtapSecondPayment?
    var index: IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        self.setBtn.setTitle(dateData, for: .normal)
        let dataFormatter = DateFormatter()
        dataFormatter.dateFormat = "dd/MM/yyyy"
        let formattedDate = dataFormatter.string(from: Date())
        self.lbdate.text = formattedDate
        self.lbpayment.text = "โปรดระบุ"
        // Configure the view for the selected state
//        self.setBtn.setTitle(dateData, for: .normal)
      
    }
}
