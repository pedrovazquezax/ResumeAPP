//
//  SkillsSectionCollectionViewCell.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 05/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class SkillsSectionCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var titleSection: UILabel!
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var skillsCollectionView: UICollectionView!
    
    let skillCellIdentifier = "skillCellIdentifier"
    var skillsCollection:[Skill]? 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        skillsCollectionView.delegate = self
        skillsCollectionView.dataSource = self
        skillsCollectionView.register(UINib(nibName: "SkillsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: skillCellIdentifier)
    }

}

extension SkillsSectionCollectionViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return skillsCollection?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: skillCellIdentifier, for: indexPath) as! SkillsCollectionViewCell
        cell.cellData = skillsCollection![indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 105, height: frame.height)
    }
}
