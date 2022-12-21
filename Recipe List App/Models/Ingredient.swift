//
//  Ingredient.swift
//  Recipe List App
//
//  Created by Tyler Waldo on 12/21/22.
//

import Foundation

class Ingredient: Identifiable, Decodable {
    var id:UUID?
    
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
}
