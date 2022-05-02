//
//  CategoryViewController.swift
//  SimpleShopApp
//
//  Created by student on 02.02.2022.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    static var itemss = [UIImage(named: "img1"),UIImage(named: "img1"), UIImage(named: "img1")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CategoryViewController.itemss.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell") as! CategoryTableViewCell
        cell.UIImageCell.image = CategoryViewController.itemss[indexPath.row]
        if(indexPath.row == 0){
        cell.labelOutlet.text = "Men's Wear"
        }
        else if(indexPath.row == 1)
        {
            cell.labelOutlet.text = "Women's Wear"
        }
        else{
            cell.labelOutlet.text = "Kids's Wear"
        }
        //cell.categoryTextField.text = "Men"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "vc") as! ViewController
        if(categoryTableView.indexPathForSelectedRow?.row == 0)
        {
            vc.products = mens
        }else if(categoryTableView.indexPathForSelectedRow?.row == 1)
        {
            vc.products = womens
        }
        else if(categoryTableView.indexPathForSelectedRow?.row == 2){
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
