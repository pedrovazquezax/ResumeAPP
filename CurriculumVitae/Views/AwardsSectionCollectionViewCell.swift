//
//  AwardsSectionCollectionViewCell.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 08/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class AwardsSectionCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var awardsCollectionView: UICollectionView!
    
    let awardCellIdentifier = "awardCellIdentifier"

       var awardCollection:[Award]?
       
       override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
           awardsCollectionView.delegate = self
           awardsCollectionView.dataSource = self
           awardsCollectionView.register(UINib(nibName: "AwardsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: awardCellIdentifier)
       }

}

extension AwardsSectionCollectionViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return awardCollection?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: awardCellIdentifier, for: indexPath) as! AwardsCollectionViewCell
           cell.cellData = awardCollection![indexPath.item]
            return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 105, height: frame.height)
    }
}
