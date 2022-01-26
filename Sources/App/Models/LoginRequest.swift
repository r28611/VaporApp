//
//  LoginRequest.swift
//  
//
//  Created by Margarita Novokhatskaia on 26/01/2022.
//

import Vapor
 
struct LoginRequest: Content {
    var username: String
    var password: String
}
