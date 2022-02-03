//
//  ResponseWithMessage.swift
//  
//
//  Created by Margarita Novokhatskaia on 25/01/2022.
//

import Vapor

struct ResponseWithMessage: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
