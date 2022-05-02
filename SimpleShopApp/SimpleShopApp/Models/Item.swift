//
//  Item.swift
//  SimpleShopApp
//
//  Created by Student on 02.02.2022.
//

import Foundation

public class Item {
    var image: String?
    var title: String?
    //var author: String?
    var description: String?
    var price: Float?
    var discount: Int?
    

    public init(image: String, title: String, description: String, price: Float, discount: Int) {
        self.image = image
        self.title = title
        //self.author = author
        self.description = description
        self.price = price
        self.discount = discount
        
    }
}

//var mens = [Item]()

var men1 = Item(image: "hoodie1", title: "Hoodie", description: "...", price: 40.00, discount: 10)
var men2 = Item(image: "hoodie2", title: "Hoodie",  description: "...", price: 50.00, discount: 12)
var men3 = Item(image: "hoodie3", title: "Hoodie", description: "...", price: 60.00, discount: 15)
var men4 = Item(image: "hoodie1", title: "Shirts", description: "...", price: 40.00, discount: 10)
var men5 = Item(image: "hoodie2", title: "Shirts",  description: "...", price: 50.00, discount: 12)
var men6 = Item(image: "hoodie3", title: "Shirts", description: "...", price: 60.00, discount: 15)
var men7 = Item(image: "hoodie1", title: "t-shirts", description: "...", price: 40.00, discount: 10)
var men8 = Item(image: "hoodie2", title: "t-shirts",  description: "...", price: 50.00, discount: 12)
var men9 = Item(image: "hoodie3", title: "t-shirts", description: "...", price: 60.00, discount: 15)
var mens = [men1, men2, men3, men4, men5, men6, men7, men8, men9]

var women1 = Item(image: "hoodie1", title: "Saree", description: "...", price: 40.00, discount: 10)
var women2 = Item(image: "hoodie2", title: "Saree",  description: "...", price: 50.00, discount: 12)
var women3 = Item(image: "hoodie3", title: "Saree", description: "...", price: 60.00, discount: 15)
var women4 = Item(image: "hoodie1", title: "Saree", description: "...", price: 40.00, discount: 10)
var women5 = Item(image: "hoodie2", title: "Saree",  description: "...", price: 50.00, discount: 12)
var women6 = Item(image: "hoodie3", title: "Saree", description: "...", price: 60.00, discount: 15)
var women7 = Item(image: "hoodie1", title: "Saree", description: "...", price: 40.00, discount: 10)
var women8 = Item(image: "hoodie2", title: "Saree",  description: "...", price: 50.00, discount: 12)
var women9 = Item(image: "hoodie3", title: "Saree", description: "...", price: 60.00, discount: 15)
var womens = [women1, women2, women3, women4, women5, women6, women7, women8, women8]

var kids1 = Item(image: "hoodie1", title: "Kids Ware", description: "...", price: 40.00, discount: 10)
var kids2 = Item(image: "hoodie2", title: "Kids Ware",  description: "...", price: 50.00, discount: 12)
var kids3 = Item(image: "hoodie3", title: "Kids Ware", description: "...", price: 60.00, discount: 15)
var kids4 = Item(image: "hoodie1", title: "Kids Ware", description: "...", price: 40.00, discount: 10)
var kids5 = Item(image: "hoodie2", title: "Kids Ware",  description: "...", price: 50.00, discount: 12)
var kids6 = Item(image: "hoodie3", title: "Kids Ware", description: "...", price: 60.00, discount: 15)
var kids7 = Item(image: "hoodie1", title: "Kids Ware", description: "...", price: 40.00, discount: 10)
var kids8 = Item(image: "hoodie2", title: "Kids Ware",  description: "...", price: 50.00, discount: 12)
var kids9 = Item(image: "hoodie3", title: "Kids Ware", description: "...", price: 60.00, discount: 15)
var kids = [kids1, kids2, kids3, kids4, kids5, kids6, kids7, kids8, kids9]



