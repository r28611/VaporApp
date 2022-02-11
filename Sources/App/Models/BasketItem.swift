//
//  BasketItem.swift
//  
//
//  Created by Margarita Novokhatskaia on 09/02/2022.
//

import Foundation

struct BasketItem {
    let id_product: Int
    var quantity: Int
    
    init(from addedProduct: AddProductRequest) {
        self.id_product = addedProduct.id_product
        self.quantity = addedProduct.quantity
    }
}
