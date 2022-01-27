//
//  UserAreaController.swift
//  
//
//  Created by Margarita Novokhatskaia on 27/01/2022.
//

import Vapor

class UserAreaController {
    
    func changeUserData(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        guard let body = try? req.content.decode(UserDataRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = CommonResponse(result: 1, error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
