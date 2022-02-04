import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }

    let controller = AuthController()
    app.post("register", use: controller.register)
    app.post("login", use: controller.login)
    app.post("logout", use: controller.logout)
    
    let userAreaController = UserAreaController()
    app.patch("changeUserData", use: userAreaController.changeUserData)
    app.post("addReview", use: userAreaController.addReview)
    app.delete("deleteReview", use: userAreaController.deleteReview)
    
    let catalog = CatalogController()
    app.get("catalogData", use: catalog.getCatalog)
    app.get("getGoodById", use: catalog.getProduct)
    app.get("getProductReviews", use: catalog.getReviews)
    try app.register(collection: TodoController())
}
