//
//  CatalogController.swift
//  
//
//  Created by Margarita Novokhatskaia on 27/01/2022.
//

import Vapor

class CatalogController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<[Product]> {
        guard let body = try? req.content.decode(CatalogRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = [
            Product(id_product: 123, product_name: "Ноутбук", price: 45600),
            Product(id_product: 456, product_name: "Мышка", price: 1000)
        ]
        
        return req.eventLoop.future(response)
    }
    
    func getProduct(_ req: Request) throws -> EventLoopFuture<ProductDataResponse> {
        guard let body = try? req.content.decode(ProductRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = ProductDataResponse(result: 1, product_name: "Название", product_price: 123, product_description: "Описание", error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
