//
//  HomePageViewController.swift
//  Photo-scooch
//
//  Created by TASMIA KHAN on 10/27/17.
//  Copyright © 2017 2pleb. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signOutButtonTapped(_ sender: Any) {
        print("Sign out button tapped.")
    }

    @IBAction func loadMemberProfileTapped(_ sender: Any) {
        print("load member profile button tapped.")
    }
   
    @IBOutlet weak var userFullNameLabel: UILabel!
}
