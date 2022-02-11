import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
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

    let basket = UserBasket()
    app.post("addToBasket", use: basket.addProductToBasket)
    app.delete("deleteFromBasket", use: basket.deleteProductFromBasket)
    app.post("payBasket", use: basket.pay)
}
