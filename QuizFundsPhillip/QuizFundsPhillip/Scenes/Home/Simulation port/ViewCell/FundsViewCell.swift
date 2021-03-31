//
//  FundsViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 12/3/21.
//

import UIKit

class FundsViewCell: UITableViewCell {
    
    
    var getOrderData: DataGetOrder?
    var getOrderData2: DataGetOrder?
    var getOrderData3: DataGetOrder?
    var getOrderData4: DataGetOrder?
    var getOrderData5: DataGetOrder?
    var indexcollectioncenterred: Int = 0
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

        if self.indexcollectioncenterred == 0 {
            self.lbcost.text = "\(self.getOrderData?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData?.unrealizedReturns ?? 0)%"
            self.lbnavvalue.text = "+\(self.getOrderData?.unrealizedProfits ?? 0)"
        } else if self.indexcollectioncenterred == 1 {
      
            self.lbcost.text = "\(self.getOrderData2?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData2?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData2?.unrealizedReturns ?? 0)%"
            self.lbnavvalue.text = "+\(self.getOrderData2?.unrealizedProfits ?? 0)"
        }
        else  if self.indexcollectioncenterred == 2 {
        
            self.lbcost.text = "\(self.getOrderData3?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData3?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData3?.unrealizedReturns ?? 0)%"
            self.lbnavvalue.text = "+\(self.getOrderData3?.unrealizedProfits ?? 0)"
        }
        else  if self.indexcollectioncenterred == 3 {
        
            self.lbcost.text = "\(self.getOrderData4?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData4?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData4?.unrealizedReturns ?? 0)%"
            self.lbnavvalue.text = "+\(self.getOrderData4?.unrealizedProfits ?? 0)"
       
        
        }
        
        else {
            self.lbnil.text = "ไม่พบข้อมูล"
            self.lbcost.text = "\(self.getOrderData5?.principal ?? 0)"
            self.lbvalue.text = "\(self.getOrderData5?.currentValue ?? 0)"
            self.lbnavcost.text = "+\(self.getOrderData5?.unrealizedReturns ?? 0)%"
            self.lbnavvalue.text = "+\(self.getOrderData5?.unrealizedProfits ?? 0)"
            
        }
    }
    }
