//
//  ProyectsSectionCollectionViewCell.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 08/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class ProyectsSectionCollectionViewCell: UICollectionViewCell {

     @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var proyectCollectionView: UICollectionView!
        

        let proyectCellIdentifier = "proyectCellIdentifier"

           var proyectCollection:[Award]?
           
           override func awakeFromNib() {
               super.awakeFromNib()
               // Initialization code
               proyectCollectionView.delegate = self
               proyectCollectionView.dataSource = self
               proyectCollectionView.register(UINib(nibName: "ProyectsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: proyectCellIdentifier)
           }

    }

    extension ProyectsSectionCollectionViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return proyectCollection?.count ?? 0
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                 let cell = collectionView.dequeueReusableCell(withReuseIdentifier: proyectCellIdentifier, for: indexPath) as! ProyectsCollectionViewCell
            cell.cellData = proyectCollection![indexPath.item]
                return cell
            
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: frame.width - 40, height: frame.height)
        }
    }
