//
//  SkillsCollectionViewCell.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 05/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class SkillsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var skillImageView: UIImageView!
    @IBOutlet weak var skillNameLabel: UILabel!
    @IBOutlet weak var skillLevelLabel: UILabel!
    
    var cellData: Skill?{
         didSet{
            if let skillName = cellData?.skillName{
                 skillNameLabel.text = skillName
             }
            if let skillImage = cellData?.skillImage{
                 skillImageView.image = skillImage
             }
            if let skillLevel = cellData?.skillLevel{
                 skillLevelLabel.text = skillLevel
             }
         }
     }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
