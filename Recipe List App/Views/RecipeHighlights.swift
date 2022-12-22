//
//  RecipeHighlights.swift
//  Recipe List App
//
//  Created by Tyler Waldo on 12/22/22.
//

import SwiftUI

struct RecipeHighlights: View {
    var allHighlights = ""
    
    init(highlights:[String]) {
        
        // Loop through the highlights and build the string
        for index in 0..<highlights.count {
            
            allHighlights += highlights[index]
            
            if index < highlights.count-1 {
                allHighlights += ", "
            }
        }
        
    }
    
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["test","test2","test3"])
    }
}
