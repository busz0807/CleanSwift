//
//  SimulationPortViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 9/3/21.
//

import UIKit

class SimulationPortViewCell: UICollectionViewCell {
    
    var unrealizedProfits = 0.00
    var unrealizedReturns = 0.00
    var currentValue = 0.00
    var indexpath: Int = 0
    @IBOutlet weak var lbport: UILabel!
    @IBOutlet weak var lbcurrency: UILabel!
    @IBOutlet weak var lbfloat: UILabel!
    @IBOutlet weak var lbdouble: UILabel!
    @IBOutlet weak var setView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        print("indexpath", indexpath)
        self.lbport.text = "พอร์ตจำลอง \(indexpath + 1)"
        self.setView.clipsToBounds = true
        self.setView.layer.cornerRadius = 15
    //    self.setView.layer.shadowOpacity = 0.3
        self.setView.layer.shadowRadius = 10
        self.setView.layer.masksToBounds = false
        
    }
}



