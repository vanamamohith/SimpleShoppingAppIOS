//
//  ItemViewController.swift
//  SimpleShopApp
//
//  Created by student on 02.02.2022.
//

import UIKit


class ItemViewController: UIViewController {
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var oldPrice: UILabel!
    @IBOutlet var newPrice: UILabel!
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    public var object: Item?
    var products = [Item]()
    var pdnew = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemImage.image = UIImage(named: "\(object!.image!)")
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "\(object!.price!) $")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        oldPrice.attributedText = attributeString
        newPrice.text = "$\(Float(object!.price!) * (100 - Float(object!.discount!)) / 100)"
        discountLabel.text = "\(object!.discount!)%"
        descLabel.text = "\(object!.description!)"
        titleLabel.text = "\(object!.title!)"
        //authorLabel.text = "\(object!.author!)"
    }
    
    @IBAction func addToCart(_ sender: Any) {
        let temp = Item(image: (object?.image!)!, title: (object?.title!)!, description: (object?.description!)!, price: (object?.price!)!, discount: (object?.discount!)!)
        CartViewController.cartItems.append(temp)
        let alert = UIAlertController(title: "Success!", message: "This product was added to your cart", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Continue Shopping", style: .default) { _ in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! ViewController
            vc.products = self.products
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        let action2 = UIAlertAction(title: "Go to your Cart Page", style: .default) { (_) in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "cartVC") as! CartViewController
            vc.products = self.products
            self.navigationController?.pushViewController(vc, animated: true)
        }
        alert.addAction(action1)
        alert.addAction(action2)
        present(alert, animated: true)
    }
    
    
}
