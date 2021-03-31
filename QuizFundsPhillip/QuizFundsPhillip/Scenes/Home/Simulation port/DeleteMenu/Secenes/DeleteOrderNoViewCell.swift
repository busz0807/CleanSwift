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
    var number: Int?
    var delegate: CellDelegagte?
    var index: IndexPath = []
    @IBOutlet weak var btndelete: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
 
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
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
