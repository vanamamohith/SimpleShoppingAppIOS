//
//  PaymentViewController.swift
//  SimpleShopApp
//
//  Created by student on 02.02.2022.
//

import UIKit

class PaymentViewController: UIViewController {
    
    var num : Float?
    
    @IBOutlet weak var priceOutlet: UILabel!
    
    @IBOutlet weak var cardNumErr: UILabel!
    
    
    @IBOutlet weak var expiryErr: UILabel!
    
    
    @IBOutlet weak var cvvError: UILabel!
    
    @IBOutlet weak var cardNumTextField: UITextField!
    
    @IBOutlet weak var expiryTextField: UITextField!
    
    
    
    @IBOutlet weak var cvvTextField: UITextField!
    
    var products = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        priceOutlet.text = "$\(num!)"
        
        cardNumErr.text = ""
        expiryErr.text = ""
        cvvError.text = ""
        
    }
    
    @IBAction func cardNumTyping(_ sender: Any) {
        cardNumErr.text = ""
    }
    
    
    @IBAction func expiryTyping(_ sender: Any) {
        expiryErr.text = ""
    }
    
    @IBAction func cvvTyping(_ sender: Any) {
        cvvError.text = ""
    }
    
    @IBAction func payButton(_ sender: Any) {
        
        var c1 = 0;
        var c2 = 0;
        var c3 = 0;
            if(cardNumTextField.text == "")
            {
                cardNumErr.text = "* Required Field"
                c1 = c1+1
            }
            else{
                if(cardNumTextField.text?.count != 12)
                {
                    cardNumErr.text = "*Not Valid"
                    c1 = c1 + 1
                }
                else{
                    cardNumErr.text = ""
                    c1=0;
                    
                }
            }
            if(expiryTextField.text == "")
            {
                expiryErr.text = "* Required Field"
                c2 = c2+1
            }else{
                expiryErr.text = ""
                c2 = 0
            }
            if(cvvTextField.text == "")
            {
                cvvError.text = "* Required Field"
                c3 = c3 + 1
            }else{
                if(cvvTextField.text?.count != 3)
                {
                    cvvError.text = "*Not Valid"
                    c3 = c3 + 1
                }
                else{
                    cvvError.text = ""
                    c3 = 0
                }
            }
           if(c1==0 && c2==0 && c3==0){
           let congratsAlert = UIAlertController(title: "Congratulations!", message: "Your have successfully purchased your items!", preferredStyle: .alert)
                        let lastAction = UIAlertAction(title: "Go to main page", style: .default) { _ in
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "category") as! CategoryViewController
                            //vc.products = self.products
                            self.navigationController?.pushViewController(vc, animated: true)
                        }
           congratsAlert.addAction(lastAction)
           present(congratsAlert, animated: true)
            
           }

        
    }
    
    
    @IBAction func cancelButton(_ sender: Any) {
        
        
    }
    
    

}
