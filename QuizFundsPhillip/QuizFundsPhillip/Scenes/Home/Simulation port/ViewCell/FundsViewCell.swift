//
//  FundsViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 12/3/21.
//

import UIKit
import RealmSwift
class FundsViewCell: UITableViewCell {
    
    var fundsList: [ReealmFundsListMobile]?
    var getOrderData: DataGetOrder?
    var getOrderData2: DataGetOrder?
    var getOrderData3: DataGetOrder?
    var getOrderData4: DataGetOrder?
    var getOrderData5: DataGetOrder?
    var indexcollectioncenterred: Int = 0
    @IBOutlet weak var enNameLabel: UILabel!
    @IBOutlet weak var thNameLabel: UILabel!
    @IBOutlet weak var lbcost: UILabel!
    @IBOutlet weak var lbnil: UILabel!
    @IBOutlet weak var lbvalue: UILabel!
    @IBOutlet weak var lbnavcost: UILabel!
    @IBOutlet weak var lbnavvalue: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        let count = Int(self.fundsList?.count ?? 0) - 1
        for countindex in 0...count {
            if self.fundsList?[countindex].fundId == self.getOrderData?.fcode {
                self.enNameLabel.text = self.fundsList?[countindex].code
                self.thNameLabel.text = self.fundsList?[countindex].enName
            }
        }
//        let count = Int(self.fundsList?.count ?? 0) - 1
        for countindex in 0...count {
            if self.fundsList?[countindex].fundId == self.getOrderData2?.fcode {
                self.enNameLabel.text = self.fundsList?[countindex].code
                self.thNameLabel.text = self.fundsList?[countindex].enName
            }
        }
//        let count = Int(self.fundsList?.count ?? 0) - 1
        for countindex in 0...count {
            if self.fundsList?[countindex].fundId == self.getOrderData3?.fcode {
                self.enNameLabel.text = self.fundsList?[countindex].code
                self.thNameLabel.text = self.fundsList?[countindex].enName
            }
        }
//        let count = Int(self.fundsList?.count ?? 0) - 1
        for countindex in 0...count {
            if self.fundsList?[countindex].fundId == self.getOrderData4?.fcode {
                self.enNameLabel.text = self.fundsList?[countindex].code
                self.thNameLabel.text = self.fundsList?[countindex].enName            }
        }
      
        for countindex in 0...count {
            if self.fundsList?[countindex].fundId == self.getOrderData5?.fcode {
                self.enNameLabel.text = self.fundsList?[countindex].code
                self.thNameLabel.text = self.fundsList?[countindex].enName
            }
        }
        
        if self.indexcollectioncenterred == 0 {
            let abbreviation = self.getOrderData?.abbreviation ?? ""
           if abbreviation == "" {
            self.lbnil.text = "ไม่มีข้อมูล"
            self.lbcost.text = ""
            self.lbvalue.text = ""
            self.lbnavcost.text = ""
            self.lbnavvalue.text = ""
       
            
        } else {
            self.lbcost.text = "\(self.getOrderData?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData?.unrealizedReturns ?? 0)%"
            self.lbnil.text = ""
            let change = self.getOrderData?.unrealizedProfits ?? 0
            if change < 0 {
            self.lbnavvalue.text = "\(self.getOrderData?.unrealizedProfits ?? 0)"
            self.lbnavvalue.textColor = .red
//                self.chage = "\(navlist[countindexnav].change)(\(navlist[countindexnav].changePercent)%)"
            } else {
                self.lbnavvalue.text = "+\(self.getOrderData?.unrealizedProfits ?? 0)"
//                self.chage = "+\(navlist[countindexnav].change)(+\(navlist[countindexnav].changePercent)%)"
                self.lbnavvalue.textColor = .green
            }
        }
        }
        if self.indexcollectioncenterred == 1 {
            let abbreviation = self.getOrderData2?.abbreviation ?? ""
           if abbreviation == "" {
            self.lbnil.text = "ไม่มีข้อมูล"
            self.lbcost.text = ""
            self.lbvalue.text = ""
            self.lbnavcost.text = ""
            self.lbnavvalue.text = ""
       
            
        } else {
            self.lbcost.text = "\(self.getOrderData2?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData2?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData2?.unrealizedReturns ?? 0)%"
            self.lbnil.text = ""
            let change = self.getOrderData2?.unrealizedProfits ?? 0
            if change < 0 {
            self.lbnavvalue.text = "\(self.getOrderData2?.unrealizedProfits ?? 0)"
            self.lbnavvalue.textColor = .red
//                self.chage = "\(navlist[countindexnav].change)(\(navlist[countindexnav].changePercent)%)"
            } else {
                self.lbnavvalue.text = "+\(self.getOrderData2?.unrealizedProfits ?? 0)"
//                self.chage = "+\(navlist[countindexnav].change)(+\(navlist[countindexnav].changePercent)%)"
                self.lbnavvalue.textColor = .green
            }
        }

        }
        if self.indexcollectioncenterred == 2 {
        
            let abbreviation = self.getOrderData3?.abbreviation ?? ""
            
           if abbreviation == "" {
            self.lbnil.text = "ไม่มีข้อมูล"
            self.lbcost.text = ""
            self.lbvalue.text = ""
            self.lbnavcost.text = ""
            self.lbnavvalue.text = ""
       
            
        } else {
            self.lbcost.text = "\(self.getOrderData3?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData3?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData3?.unrealizedReturns ?? 0)%"
            self.lbnil.text = ""
            let change = self.getOrderData3?.unrealizedProfits ?? 0
            if change < 0 {
            self.lbnavvalue.text = "\(self.getOrderData3?.unrealizedProfits ?? 0)"
            self.lbnavvalue.textColor = .red
//                self.chage = "\(navlist[countindexnav].change)(\(navlist[countindexnav].changePercent)%)"
            } else {
                self.lbnavvalue.text = "+\(self.getOrderData3?.unrealizedProfits ?? 0)"
//                self.chage = "+\(navlist[countindexnav].change)(+\(navlist[countindexnav].changePercent)%)"
                self.lbnavvalue.textColor = .green
            }
        }

        }
          if self.indexcollectioncenterred == 3 {
            let abbreviation = self.getOrderData4?.abbreviation ?? ""
           if abbreviation == "" {
            self.lbnil.text = "ไม่มีข้อมูล"
            self.lbcost.text = "1"
            self.lbvalue.text = "2"
            self.lbnavcost.text = "3"
            self.lbnavvalue.text = "4"
       
            
        } else {
            self.lbcost.text = "\(self.getOrderData4?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData4?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData4?.unrealizedReturns ?? 0)%"
            self.lbnil.text = ""
            let change = self.getOrderData4?.unrealizedProfits ?? 0
            if change < 0 {
            self.lbnavvalue.text = "\(self.getOrderData4?.unrealizedProfits ?? 0)"
            self.lbnavvalue.textColor = .red
//                self.chage = "\(navlist[countindexnav].change)(\(navlist[countindexnav].changePercent)%)"
            } else {
                self.lbnavvalue.text = "+\(self.getOrderData4?.unrealizedProfits ?? 0)"
//                self.chage = "+\(navlist[countindexnav].change)(+\(navlist[countindexnav].changePercent)%)"
                self.lbnavvalue.textColor = .green
            }
        }

        
        }
        
         if self.indexcollectioncenterred == 4 {
            let abbreviation = self.getOrderData5?.fcode ?? ""
           if abbreviation == "" {
            self.lbnil.text = "ไม่มีข้อมูล"
            self.lbcost.text = ""
            self.lbvalue.text = ""
            self.lbnavcost.text = ""
            self.lbnavvalue.text = ""
       
            
           } else {
            self.lbcost.text = "\(self.getOrderData5?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData5?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData5?.unrealizedReturns ?? 0)%"
            self.lbnil.text = ""
            let change = self.getOrderData5?.unrealizedProfits ?? 0
            if change < 0 {
            self.lbnavvalue.text = "\(self.getOrderData5?.unrealizedProfits ?? 0)"
            self.lbnavvalue.textColor = .red
//                self.chage = "\(navlist[countindexnav].change)(\(navlist[countindexnav].changePercent)%)"
            } else {
                self.lbnavvalue.text = "+\(self.getOrderData5?.unrealizedProfits ?? 0)"
//                self.chage = "+\(navlist[countindexnav].change)(+\(navlist[countindexnav].changePercent)%)"
                self.lbnavvalue.textColor = .green
                }
            }
        }
    }
}
