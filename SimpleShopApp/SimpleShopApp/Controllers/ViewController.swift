//
//  ViewController.swift
//  SimpleShopApp
//
//  Created by Kalbek Saduakassov on 02.02.2021.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var tableSC: UISegmentedControl!
    static var items = [Item]()
    var products = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ItemTableViewCell", bundle: nil), forCellReuseIdentifier: "ItemTableViewCell")
        showItems()
    }
    
    private func showItems() {
//        let item1 = Item(image: "hoodie1", title: "Hoodie", description: "...", price: 40.00, discount: 10)
//        let item2 = Item(image: "hoodie2", title: "Hoodie",  description: "...", price: 50.00, discount: 12)
//        let item3 = Item(image: "hoodie3", title: "Hoodie", description: "...", price: 60.00, discount: 15)
        
        ViewController.items = products
    }
    
    
    @IBAction func gridDidChosen(_ sender: UISegmentedControl) {
//        if sender.selectedSegmentIndex == 1 {
//            sender.selectedSegmentIndex = 0
//            let vc = storyboard?.instantiateViewController(withIdentifier: "collectionVC") as! CollectionViewController
//            navigationController?.pushViewController(vc, animated: true)
//
//        }
    }
    
    private func calculateDiscount(id: Int) -> Float {
        return (Float(ViewController.items[id].price!) * Float(100 - ViewController.items[id].discount!) / 100)
    }
    
    
    func reviewItem(_ id: Int) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "itemVC") as! ItemViewController
        vc.object = Item(image: ViewController.items[id].image!, title: ViewController.items[id].title!,description: ViewController.items[id].description!, price: ViewController.items[id].price!, discount: ViewController.items[id].discount!)
        vc.products = products
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToCartVC(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "cartVC") as! CartViewController
        vc.products = products
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ViewController.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell") as! ItemTableViewCell
        let index = ViewController.items[indexPath.row]
        cell.imgView.image = UIImage(named: index.image!)
        cell.titleLabel.text = index.title
        cell.descLabel.text = index.description
        cell.priceLabel.text = "$\(Int(calculateDiscount(id: indexPath.row)))"
        cell.discountLabel.text = "\(index.discount!)%"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        reviewItem(indexPath.row)
    }
    
    
    
    
}

