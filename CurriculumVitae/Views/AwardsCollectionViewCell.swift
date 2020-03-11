//
//  AwardsCollectionViewCell.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 08/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class AwardsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var awardImageView: UIImageView!
    
    @IBOutlet weak var awardTitleLabel: UILabel!
    @IBOutlet weak var awardTextLabel: UILabel!
    
    var cellData: Award?{
            didSet{
                if let awardName = cellData?.awardName{
                    awardTitleLabel.text = awardName
                }
                if let awardImage = cellData?.awardImage{
                    awardImageView.image = awardImage
                }
                if let awardText = cellData?.awardText{
                    awardTextLabel.text = awardText
                }
            }
        }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
