

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        print("Cancel button tapped.")
        self.dismiss(animated: 	true, completion: nil)
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        print("Sign up button tapped.")

    
    if (firstNameTextField.text?.isEmpty)! ||
       (lastNameTextField.text?.isEmpty)! ||
       (emailTextField.text?.isEmpty)! ||
       (passwordTextField.text?.isEmpty)!
    {
    
        displayMessage(userMessage: "All required fields have to be filled.")
        return
    }
        
        
        
    
    if((passwordTextField.text!==repeatPasswordTextField.text!)){
         displayMessage(userMessage: "Please make sure that passwords match")
         return
    }
        
        let myActivityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        
        myActivityIndicator.center=view.center
        
        myActivityIndicator.hidesWhenStopped = false
        
        myActivityIndicator.startAnimating()
        
        view.addSubview(myActivityIndicator)
    }
    
    func 	removeActivityIndicator(activityIndicator: UIActivityIndicatorView){
        DispatchQueue.main.async{
            activityIndicator.stopAnimating()
            activityIndicator.removeFromSuperview()
        }
    }
    
    func displayMessage(userMessage:String) -> Void {
        DispatchQueue.main.async
            
            {
                
            let alertController = UIAlertController(title: "Alert", message: userMessage, preferredStyle: .alert)
                
                let OKAction = UIAlertAction(title: "OK", style: .default){
                    (action:UIAlertAction!) in
                    print("OK button tapped")
                    DispatchQueue.main.async
                        {
                            self.dismiss(animated: true, completion: nil)
                    }
                }
                alertController.addAction(OKAction)
                self.present(alertController, animated: true, completion: nil)
        }
    
    }
    
    
    
    
    
    
    
    
    


}
