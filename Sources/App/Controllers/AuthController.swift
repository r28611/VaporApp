//
//  AuthController.swift
//  
//
//  Created by Margarita Novokhatskaia on 25/01/2022.
//

import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
}
