//
//  FavouriteRecipes.swift
//  App
//
//  Created by Akua Afrane-Okese on 2020/04/07.
//

import Foundation
import Vapor

struct FavouriteRecipes: Content {
    var favouriteId: Int
    var recipeTitle: String
}
