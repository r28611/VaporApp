//
//  LoginResponse.swift
//  
//
//  Created by Margarita Novokhatskaia on 26/01/2022.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User?
    var error_message: String?
}
