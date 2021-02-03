//
//  SSFViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 29/1/21.
//

import UIKit

class SSFViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelFoat: UILabel!
    @IBOutlet weak var labelDouble: UILabel!
    @IBOutlet weak var labelFund: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelMonth: UILabel!
    var data: [String:String]?  {
        didSet {
            guard let data = data else { return }
//            Label.text = data
            labelName.text = data["Name"]
     
        }
    }
    var numbers: [String:String]?  {
        didSet {
            guard let numbers = numbers else { return }
//            Label.text = data
            labelFoat.text = numbers["Number"]
         
        }
    }
    var doubles: [String:String]?  {
        didSet {
            guard let doubles = doubles else { return }
//            Label.text = data
            labelDouble.text = doubles["Double"]
//            print(doubles["Double"] ?? String() )
            let dd = doubles["Double"] ?? String()
            if (dd == "-0.96%") {
                labelDouble.textColor = .red
            }else if (dd == "-0.51%"){
                labelDouble.textColor = .red
            }else {
                labelDouble.textColor = .green
            }
            
        }
    }
    var funds: [String:String]?  {
        didSet {
            guard let funds = funds else { return }
//            Label.text = data
            labelFund.text = funds["Fund"]
            labelFund.textColor = .darkGray
        }
    }
    var dates: [String:String]?  {
        didSet {
            guard let dates = dates else { return }
//            Label.text = data
            labelDate.text = dates["Dates"]
                labelDate.textColor = .darkGray
        }
    }
    var months: [String:String]?  {
        didSet {
            guard let months = months else { return }
//            Label.text = data
            labelMonth.text = months["Month"]
            labelMonth.textColor = .darkGray
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
