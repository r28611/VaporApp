//
//  UserDataRequest.swift
//  
//
//  Created by Margarita Novokhatskaia on 25/01/2022.
//

import Vapor

struct UserDataRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
