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
          let meController = MeViewController()
          meController.tabBarItem.image = UIImage(named: "me")
          meController.tabBarItem.title = "Me"
          
          let educationController = EducationTableViewController()
          let educationTableViewController = UINavigationController(rootViewController: educationController)
          educationTableViewController.tabBarItem.image = UIImage(named: "education")
          educationTableViewController.tabBarItem.title = "Educación"
        
         let skillsController =
            SkillsCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
         let skillsViewController = UINavigationController(rootViewController: skillsController)
         skillsViewController.tabBarItem.image = UIImage(named: "skills")
        skillsViewController.tabBarItem.title = "Habilidades"
        
        
        let awardsController =
            AwardsCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
         let awardsViewController = UINavigationController(rootViewController: awardsController)
         awardsViewController.tabBarItem.image = UIImage(named: "awards")
        awardsViewController.tabBarItem.title = "Premios"
        
        let test =  testsViewController()
        test.tabBarItem.title = "test"
        
                  
                

            tabBar.tintColor = UIColor.init(red: 4/255, green: 61/255, blue: 82/255, alpha: 1)
            viewControllers = [meController,educationTableViewController,skillsViewController,awardsViewController,test]

      }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .default
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    
    
}
