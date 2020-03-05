//
//  TabBarViewController.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 04/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
          super.viewDidLoad()

          // Do any additional setup after loading the view.
          
//                  let controller = BillboardCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
          let meController = MeViewController()
//          let meViewController = UINavigationController(rootViewController: meController)
          meController.tabBarItem.image = UIImage(named: "me")
          meController.tabBarItem.title = "Me"
          
          let educationController = EducationTableViewController()
          let educationTableViewController = UINavigationController(rootViewController: educationController)
          educationTableViewController.tabBarItem.image = UIImage(named: "education")
          educationTableViewController.tabBarItem.title = "Educación"

                  
                

            tabBar.tintColor = UIColor.init(red: 4/255, green: 61/255, blue: 82/255, alpha: 1)
            viewControllers = [meController,educationTableViewController]

      }

    
    
}
