//
//  RecipeView.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/07.
//

import SwiftUI

struct RecipeView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                Category()
                    .padding(.bottom, 30)
                VStack{
                    Popular()
                    RecipeList()
                }
                .cornerRadius(15)
            }
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
