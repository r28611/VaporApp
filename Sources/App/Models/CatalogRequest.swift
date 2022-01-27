//
//  CatalogRequest.swift
//  
//
//  Created by Margarita Novokhatskaia on 27/01/2022.
//

import Vapor

struct CatalogRequest: Content {
    var page_number: Int
    var id_category: Int
}
