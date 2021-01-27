//
//  WeeklyViewCell.swift
//  QuizAnalystReport
//
//  Created by BUSSNQ TH on 26/1/21.
//

import UIKit

class WeeklyViewCell: UITableViewCell {

    @IBOutlet weak var lbFundsname: UILabel!
    @IBOutlet weak var lbLastdate: UILabel!
    var data: AnalystReportWeeklyModel?  {
        didSet {
            guard let data = data else { return }
//            Label.text = data
            self.lbFundsname.text = data.HeadlineEn
            self.lbLastdate.text = data.lastUpdate

        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
