//
//  AddProductRequest.swift
//  
//
//  Created by Margarita Novokhatskaia on 09/02/2022.
//

import Vapor

struct AddProductRequest: Content {
    let id_product: Int
    let quantity: Int
}
