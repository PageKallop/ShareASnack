//
//  RecipeData.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/8/21.
//

import Foundation
import UIKit

struct recipePost: Identifiable {
    
    var id = UUID()
    
    var postingUser: String
    var description: String
    var numberOfLikes: Int
    var image: UIImage
    
}
