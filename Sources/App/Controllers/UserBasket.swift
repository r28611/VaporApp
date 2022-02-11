//
//  UserBasket.swift
//  
//
//  Created by Margarita Novokhatskaia on 09/02/2022.
//

import Vapor

class UserBasket {
    
    var basket = [BasketItem]()
    
    func addProductToBasket(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        guard let body = try? req.content.decode(AddProductRequest.self) else {
            throw Abort(.badRequest)
        }
        if basket.contains(where: {$0.id_product == body.id_product}) {
            if let product = basket.firstIndex(where: {$0.id_product == body.id_product}) {
                basket[product].quantity += body.quantity
            }
        } else {
            basket.append(BasketItem(from: body))
        }
        
        print(basket)
        let response = CommonResponse(result: 1, error_message: nil)
        
        return req.eventLoop.future(response)
    }
    
    func deleteProductFromBasket(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        guard let body = try? req.query.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }
        guard basket.contains(where: {$0.id_product == body.id_product}) else {
            return req.eventLoop.future(CommonResponse(result: 0, error_message: "Сообщение об ошибке: такого товара нет в корзине"))
        }
        basket.removeAll { $0.id_product == body.id_product}
        let response = CommonResponse(result: 1, error_message: nil)
        
        return req.eventLoop.future(response)
    }
    
    func pay(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        guard !basket.isEmpty else {
            return req.eventLoop.future(CommonResponse(result: 0, error_message: "Корзина пуста"))
        }
        let response = CommonResponse(result: 1, error_message: nil)
        basket = []
        return req.eventLoop.future(response)
    }
}
