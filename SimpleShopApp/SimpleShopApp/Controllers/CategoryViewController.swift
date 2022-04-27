//
//  CategoryViewController.swift
//  SimpleShopApp
//
//  Created by student on 4/27/22.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    static var itemss = [UIImage(named: "hoodie1"),UIImage(named: ""), UIImage(named: "hoodie2"),UIImage(named: ""), UIImage(named: "hoodie3")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CategoryViewController.itemss.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as! CategoryTableViewCell
        cell.UIImageCell.image = CategoryViewController.itemss[indexPath.row]
        //cell.categoryTextField.text = "Men"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! ViewController
        if(categoryTableView.indexPathForSelectedRow?.row == 0)
        {
            vc.products = mens
        }else if(categoryTableView.indexPathForSelectedRow?.row == 2)
        {
            vc.products = womens
        }
        else if(categoryTableView.indexPathForSelectedRow?.row == 4){
            vc.products = kids
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @IBOutlet weak var categoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryTableView.tableFooterView = UIView()
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
        categoryTableView.register(UINib(nibName: "CategoryTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoryTableViewCell")
        
    }
    

}
