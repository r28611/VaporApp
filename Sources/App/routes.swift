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
    try app.register(collection: TodoController())
}
