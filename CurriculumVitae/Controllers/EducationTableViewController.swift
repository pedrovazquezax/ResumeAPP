//
//  EducationTableViewController.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 04/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class EducationTableViewController: UITableViewController {
    let educationCellIdentifier = "educationCell"
        
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = UIColor.init(red: 4/255, green: 61/255, blue: 82/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor.init(red: 4/255, green: 61/255, blue: 82/255, alpha: 1)
        navigationController?.navigationBar.tintColor = UIColor.init(red: 4/255, green: 61/255, blue: 82/255, alpha: 1)
        navigationController?.navigationBar.largeTitleTextAttributes =
            [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationItem.title = "Educación"
            
        tableView.register(UINib(nibName: "EducationTableViewCell", bundle: nil), forCellReuseIdentifier: educationCellIdentifier)
        tableView.allowsSelection = false
    }
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return educationSections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return educationSections[section].education.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return educationSections[section].titleSection
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: educationCellIdentifier, for: indexPath) as! EducationTableViewCell
        cell.cellData = educationSections[indexPath.section].education[indexPath.row]
        // Configure the cell...

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    
}
