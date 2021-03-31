//
//  BuyViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 10/2/21.
//

import UIKit

protocol DidtapSecondCalendar {
    func onClickSecondCalendar(index: Int)
}
class BuyViewCell: UITableViewCell {

    @IBOutlet weak var setView: UIView!
    @IBOutlet weak var lbFundsName: UILabel!
    @IBOutlet weak var lbcurrency: UILabel!
    @IBOutlet weak var lbdetailfunds: UILabel!
    @IBOutlet weak var lbrisk: UILabel!
    @IBOutlet weak var setbtnChooseFunds: UIButton!
    @IBAction func btnChooseFunds(_ sender: Any) {
    
        didtap?.onClickSecondCalendar(index: (index?.row)!)
    }
//    print("piceFundsBuy>>", data["picefunds"] ?? "")
//    print("enNameBuy>>", data["enName"] ?? "")
//    print("thNameBuy>>", data["thName"] ?? "")
//    print("riskBuy>>", data["risk"] ?? "")
    var date = String()
    var delete = String()
    var piceFundsBuy = String()
    var enNameBuy = String()
    var thNameBuy = String()
    var riskBuy = String()
    var didtap: DidtapSecondCalendar?
    var index: IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        print("delete>>>>", delete)
//        print("enNameBuy>>>", enNameBuy)
//        print("thNameBuy>>>", thNameBuy)
//        print("riskBuy>>>", riskBuy)
        if self.piceFundsBuy == "" {
//            print(1)
            self.setbtnChooseFunds.setTitle("เลือกกองทุน    ", for: .normal)
            self.setbtnChooseFunds.setImage( UIImage(named: "plus"), for: .normal)
            self.setView.backgroundColor = .white
            self.setView.clipsToBounds = true
            self.setView.layer.cornerRadius = 5
            self.setView.layer.shadowColor = UIColor.systemGray.cgColor
            self.setView.layer.shadowOpacity = 0.5
            self.setView.layer.shadowRadius = 6
            self.setView.layer.masksToBounds = false

        }else if self.piceFundsBuy != "" {
//            print(2)
            self.lbcurrency.text = "\(piceFundsBuy)  บาท"
            self.lbFundsName.text = enNameBuy
            self.lbdetailfunds.text = thNameBuy
            self.lbrisk.text = "ระดับความเสี่ยง \(riskBuy)"
            self.setbtnChooseFunds.setTitle(nil, for: .normal)
            self.setbtnChooseFunds.setImage(nil, for: .normal)
            self.setView.backgroundColor = .clear
        }
        if self.delete == "1" {
            self.setbtnChooseFunds.setTitle("เลือกกองทุน    ", for: .normal)
            self.setbtnChooseFunds.setImage( UIImage(named: "plus"), for: .normal)
            self.setView.backgroundColor = .white
            self.setView.clipsToBounds = true
            self.setView.layer.cornerRadius = 5
            self.setView.layer.shadowColor = UIColor.systemGray.cgColor
            self.setView.layer.shadowOpacity = 0.5
            self.setView.layer.shadowRadius = 6
            self.setView.layer.masksToBounds = false
            self.lbcurrency.text = ""
            self.lbFundsName.text = ""
            self.lbdetailfunds.text = ""
            self.lbrisk.text = ""
         
       
           
        }

     
    }

}
