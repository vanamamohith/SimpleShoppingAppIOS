//
//  Item.swift
//  SimpleShopApp
//
//  Created by Kalbek Saduakassov on 02.02.2021.
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
var mens = [men1, men2, men3]

var women1 = Item(image: "hoodie1", title: "Saree", description: "...", price: 40.00, discount: 10)
var women2 = Item(image: "hoodie2", title: "Saree",  description: "...", price: 50.00, discount: 12)
var women3 = Item(image: "hoodie3", title: "Saree", description: "...", price: 60.00, discount: 15)
var womens = [women1, women2, women3]

var kids1 = Item(image: "hoodie1", title: "Kids Ware", description: "...", price: 40.00, discount: 10)
var kids2 = Item(image: "hoodie2", title: "Kids Ware",  description: "...", price: 50.00, discount: 12)
var kids3 = Item(image: "hoodie3", title: "Kids Ware", description: "...", price: 60.00, discount: 15)
var kids = [kids1, kids2, kids3]



