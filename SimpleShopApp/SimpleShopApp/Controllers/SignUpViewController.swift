//
//  SignUpViewController.swift
//  SimpleShopApp
//
//  Created by student on 02.02.2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var fullNameErr: UILabel!
    
    @IBOutlet weak var emailIdErr: UILabel!
    
    
    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var passwordErr: UILabel!
    
    @IBOutlet weak var confirmPassErr: UILabel!
    
    
    @IBOutlet weak var emailIdTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPassTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTextField.isSecureTextEntry = true
        confirmPassTextField.isSecureTextEntry = true
        fullNameErr.text = ""
        passwordErr.text = ""
        confirmPassErr.text = ""
        emailIdErr.text = ""
    }
    
    @IBAction func fullNameTyping(_ sender: Any) {
        fullNameErr.text = ""
    }
    
    
    @IBAction func emailIdTyping(_ sender: Any) {
        emailIdErr.text = ""
    }
    
    @IBAction func passwordTyping(_ sender: Any) {
        passwordErr.text = ""
    }
    
    
    @IBAction func confirmPassTyping(_ sender: Any) {
        confirmPassErr.text = ""
    }
    
    @IBAction func singUpClicked(_ sender: Any) {
        var c1 = 0
        var c2 = 0
        var c3 = 0
        var c4 = 0
        if(nameTextFiled.text == "")
        {
            fullNameErr.text = "*Required Field"
            c1 = c1+1
        }
        else{
            c1 = 0
        }
        if(emailIdTextField.text == "")
        {
            emailIdErr.text = "*Required Field"
            c2 = c2+1
        }else{
            c2 = 0
        }
        if(passwordTextField.text == "")
        {
            passwordErr.text = "*Required Field"
            c3 = c3+1
        }else{
            c3 = 0
        }
        if(confirmPassTextField.text  == "")
        {
            confirmPassErr.text = "*Required Field"
            c4 = c4+1
        }else{
            if(passwordTextField.text == confirmPassTextField.text)
            {
                c4 = 0
            }
        }
        if(c1 == 0 && c2 == 0 && c3 == 0 && c4 == 0)
        {
            login.append([nameTextFiled.text!,emailIdTextField.text!,passwordTextField.text!])
            
            
            let congratsAlert = UIAlertController(title: "Congratulations!", message: "Your have successfully Registered", preferredStyle: .alert)
                         let lastAction = UIAlertAction(title: "Ok", style: .default) { (_) in
                             let vc = self.storyboard?.instantiateViewController(withIdentifier: "login") as! LoginViewController
                             
                             self.navigationController?.pushViewController(vc, animated: true)
                         }
            congratsAlert.addAction(lastAction)
            present(congratsAlert, animated: true)
            
        }
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "login") as! LoginViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
