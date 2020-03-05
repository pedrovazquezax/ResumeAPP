//
//  EducationTableViewCell.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 05/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class EducationTableViewCell: UITableViewCell {
    
    var cellData: Education?{
        didSet{
            if let school = cellData?.school{
                schoolLabel.text = school
            }
            if let schoolImage = cellData?.schoolImage{
                schoolImageView.image = schoolImage
            }
            if let dates = cellData?.dates{
                datesLabel.text = dates
            }
            if let title = cellData?.title{
                titleLabel.text = title
            }
        }
    }

    @IBOutlet weak var schoolImageView: UIImageView!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var datesLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
