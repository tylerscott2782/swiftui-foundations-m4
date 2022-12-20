//
//  RecipeDataView.swift
//  Recipe List App
//
//  Created by Tyler Waldo on 12/19/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom,.top], 5.0)
                    
                    ForEach(recipe.ingredients, id:\.self) { item in
                        Text("- "+item)
                        
                    }
                }
                .padding(.horizontal)
                
                //MARK: Divider
                Divider()
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom,.top],5)
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        HStack(alignment: .top) {
                            Text(String(index+1)+". ")
                            Text(recipe.directions[index])
                        }
                        .padding(.bottom, 10.0)
                    }
                }
                .padding(.horizontal)
            }
            
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recpie and pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
