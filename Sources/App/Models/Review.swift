//
//  Review.swift
//  
//
//  Created by Margarita Novokhatskaia on 03/02/2022.
//

import Vapor

struct Review: Content {
    let id_user: Int
    let text: String
}
