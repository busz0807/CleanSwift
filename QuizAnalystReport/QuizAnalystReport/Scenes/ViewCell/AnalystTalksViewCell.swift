//
//  AnalystTalksViewCell.swift
//  QuizAnalystReport
//
//  Created by BUSSNQ TH on 27/1/21.
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
                self.imgView.sd_setImage(with: url,  placeholderImage: UIImage(named: "Image"))
                
    
            }
        }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.imgView.layer.masksToBounds = true
        self.imgView.clipsToBounds = true
        self.imgView.layer.cornerRadius = 12
        
    }
}
