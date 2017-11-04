//
//  SignInViewController.swift
//  Photo-scooch
//
//  Created by Abdul Moiz on 23/10/2017.
//  Copyright © 2017 2pleb. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!

    @IBOutlet weak var userPasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        print("Sign in button.")
    }
    
    @IBAction func registerNewAccountButtonTapped(_ sender: Any) {
        print("Register new account button tapped")
        
        let registerViewController = self.storyboard?.instantiateViewController(withIdentifier:
            "RegisterViewController") as! RegisterViewController
        
        self.present(registerViewController, animated: true)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
