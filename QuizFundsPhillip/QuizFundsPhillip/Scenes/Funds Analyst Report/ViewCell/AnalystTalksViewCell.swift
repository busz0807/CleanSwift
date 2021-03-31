//
//  AnalystTalksViewCell.swift
//  QuizFundsPhillip
//
//  Created by BUSSNQ TH on 28/1/21.
//

import UIKit
import SDWebImage
class AnalystTalksViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!

    @IBOutlet weak var txtDesciption: UITextView!
    var data: AnalystTalksModel?  {
            didSet {
                guard let data = data else { return }
    //            Label.text = data
                self.txtDesciption.text = data.Title
                let url = URL(string: data.Screen ?? "")
                if data.Screen == "http://img.youtube.com/vi/sfefasecse/0.jpg" {
                    self.imgView.image = #imageLiteral(resourceName: "Youtube_default-400px")
                }else {
                self.imgView.sd_setImage(with: url,  placeholderImage: UIImage(named: "Image"))
                
            }
            }
        }
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
}
