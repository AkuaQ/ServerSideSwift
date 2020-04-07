import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    router.get("about") { req -> [String: [About]] in
        let about1 = About(aboutId: 0, title: "Find Recipes", description: "Search for recipes using \ningredients you have available.")
        let about2 = About(aboutId: 1, title: "Remember Recipes", description: "Keep track of recipes you've enjoyed.")
        
        return ["about": [about1, about2]]
    }
    
    router.post(FavouriteRecipes.self, at:"favourites") { req, data ->  FavouriteRecipes in
        return data
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
