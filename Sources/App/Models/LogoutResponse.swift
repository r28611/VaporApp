//
//  LogoutResponse.swift
//  
//
//  Created by Margarita Novokhatskaia on 26/01/2022.
//

import Vapor

struct LogoutResponse: Content {
    var result: Int
    var error_message: String?
}
