//
//  AwardsCollectionViewController.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 05/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

private let awardsIdentifier = "awardsCell"

private let proyectsIdentifier =  "proyectsCell"

class AwardsCollectionViewController: UICollectionViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
//               navigationController?.navigationBar.backgroundColor = UIColor.init(red: 4/255, green: 61/255, blue: 82/255, alpha: 1)
//        navigationController?.navigationBar.barTintColor = UIColor.init(red: 4/255, green: 61/255, blue: 82/255, alpha: 1)
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        navigationController?.navigationBar.largeTitleTextAttributes =
//                   [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationItem.title = "Premios y Proyectos"
               


        self.collectionView.backgroundColor = .systemBackground
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UINib(nibName: "AwardsSectionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: awardsIdentifier)
        self.collectionView.register(UINib(nibName: "ProyectsSectionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: proyectsIdentifier)
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
         navigationController?.navigationBar.barStyle = .black
     }
     
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return awardsSetcions.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: proyectsIdentifier, for: indexPath) as! ProyectsSectionCollectionViewCell
            cell.titleLabel.text = awardsSetcions[indexPath.item].titleSection
            cell.proyectCollection = awardsSetcions[indexPath.item].awards
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: awardsIdentifier, for: indexPath) as! AwardsSectionCollectionViewCell
            cell.titleLabel.text = awardsSetcions[indexPath.item].titleSection
            cell.awardCollection = awardsSetcions[indexPath.item].awards
            return cell
            
        }
    }
    
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */
    
}

extension AwardsCollectionViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0{
            return CGSize(width: view.frame.width, height: 300)
        }else{
             return CGSize(width: view.frame.width, height: 230)
        }
    }
}
