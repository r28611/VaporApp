//
//  ProductDataResponse.swift
//  
//
//  Created by Margarita Novokhatskaia on 27/01/2022.
//

import Vapor

struct ProductDataResponse: Content {
    var result: Int
    var product_name: String?
    var product_price: Int?
    var product_description: String?
    var error_message: String?
}
