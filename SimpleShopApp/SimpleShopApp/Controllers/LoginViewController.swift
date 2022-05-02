//
//  LoginViewController.swift
//  SimpleShopApp
//
//  Created by student on 02.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var emailIdErr: UILabel!
    
    
    
    @IBOutlet weak var passErr: UILabel!
    
    
    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTextField.isSecureTextEntry = true
        emailIdErr.text = ""
        passErr.text = ""
    }
    
    
    @IBAction func emailIDTexting(_ sender: Any) {
        emailIdErr.text = ""
    }
    
    
    @IBAction func passwordTexting(_ sender: Any) {
        passErr.text = ""
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        var email = loginTextField.text!
        var password = passwordTextField.text!
        var n = login.count
        for i in 0...n-1{
            if(email == login[i][1])
            {
                if(password == login[i][2])
                {
                    
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "category") as! CategoryViewController
                    
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                else{
                }
            }
            else{
            }
        }
        
    }
    
    @IBAction func singUpButtonClicked(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "signUp") as! SignUpViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
