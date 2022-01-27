//
//  Product.swift
//  
//
//  Created by Margarita Novokhatskaia on 27/01/2022.
//

import Vapor

struct Product: Content {
    var id_product: Int
    var product_name: String
    var price: Int
}
