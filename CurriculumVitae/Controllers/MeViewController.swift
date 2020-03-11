//
//  MeViewController.swift
//  CurriculumVitae
//
//  Created by Pedro Antonio Vazquez Rodriguez on 04/03/20.
//  Copyright © 2020 Pedro Antonio Vazquez Rodriguez. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {


    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var webPage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        profileImageView.layer.cornerRadius = 100
        profileImageView.layer.masksToBounds = true
        view.backgroundColor =  UIColor.systemBackground

    }


    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    

    @IBAction func WebPage(_ sender: Any) {
        if let url = URL(string: "https://pedrovazquezax.github.io") {
            UIApplication.shared.open(url)
            
        }
        
    }
    @IBAction func github(_ sender: Any) {
        if let url = URL(string: "https://github.com/pedrovazquezax") {
            UIApplication.shared.open(url)
            
        }
    }
    
    @IBAction func cellPhone(_ sender: Any) {
        if let url = URL(string: "tel://5539534539") {
                       UIApplication.shared.openURL(url)
                   }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
