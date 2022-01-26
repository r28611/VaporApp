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
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = LoginResponse(result: 1,
                                     user: User(id_user: 123, user_login: "geekbrains", user_name: "John", user_lastname: "Doe"),
                                     error_message: nil)
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = LogoutResponse(result: 1, error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
