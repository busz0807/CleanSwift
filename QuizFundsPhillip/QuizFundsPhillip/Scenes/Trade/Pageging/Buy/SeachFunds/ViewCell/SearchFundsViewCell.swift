//
//  SearchFundsViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 8/2/21.
//

import UIKit

class SearchFundsViewCell: UITableViewCell {
    var searchfundsData: ReealmFundsListMobile?
    var searchcount: [ReealmFundsListMobile]?
    @IBOutlet weak var lbCatagory: UILabel!
    @IBOutlet weak var lbename: UILabel!
    @IBOutlet weak var labelFloat: UILabel!
    @IBOutlet weak var labelDouble: UILabel!
    @IBOutlet weak var labelFund: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelMonth: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        print("DataFunds", searchfundsData?.ename)
      let datas =  self.searchfundsData?.mainCategory.count ?? 0
//        self.fectdata?[fectdata!.count  - 117 ].stats.confirmed ?? 0
        let data = self.searchcount?.count ?? 0
//        print("data", data)
//        print("data", datas)
//        for countIndex in 0...data  - 1 {
//            let mainCatagory = self.searchcount?[countIndex].mainCategory ?? ""
//            print("MainCatagory", mainCatagory)
//            self.lbCatagory.text = mainCatagory
            
//            let thname = self.searchfundsData?.thName?.count ?? 0
//            
//            for countIndex2 in 0...thname  {
//                let thname1 = self.searchcount?[countIndex2].thName ?? ""
            self.lbCatagory.text = self.searchfundsData?.mainCategory ?? ""
            self.lbename.text = self.searchfundsData?.assetCompany ?? ""
            self.labelFund.text = self.searchfundsData?.thName ?? ""
////        print("Data" , self.searchfundsData?.ipoDate ?? "")
            self.labelDate.text =  "01/02/2021"
            self.labelMonth.text = "1 เดือน"
            self.labelFloat.text = "16.4498"
            self.labelDouble.text = "+3.75 %"
//            }
//        }
        
        // Configure the view for the selected state
    }

}
