//
//  User.swift
//  
//
//  Created by Margarita Novokhatskaia on 26/01/2022.
//

import Vapor

struct User: Content {
    let id_user: Int
    let user_login: String
    let user_name: String
    let user_lastname: String
}
