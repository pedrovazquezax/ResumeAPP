//
//  ProyectsCollectionViewCell.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 08/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ProyectsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var proyectTitle: UILabel!
    @IBOutlet weak var proyectTextLabel: UILabel!
    @IBOutlet weak var proyectImageView: UIImageView!
    
    var cellData: Award?{
             didSet{
                 if let awardName = cellData?.awardName{
                     proyectTitle.text = awardName
                 }
                 if let awardImage = cellData?.awardImage{
                     proyectImageView.image = awardImage
                 }
                 if let awardText = cellData?.awardText{
                     proyectTextLabel.text = awardText
                 }
             }
         }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
