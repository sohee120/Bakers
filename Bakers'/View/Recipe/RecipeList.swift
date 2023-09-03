//
//  RecipeList.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/28.
//

import SwiftUI

struct RecipeList: View {
    var body: some View {
        VStack{
            ForEach(0..<3, id: \.self) { _ in
                HStack{
                    NavigationLink {
                        RecipeDetail()
                    } label: {
                        RecipeCell()
                    }
                    
                    NavigationLink {
                        RecipeDetail()
                    } label: {
                        RecipeCell()
                    }
                    //RecipeCell()
                    //RecipeCell()
                }
            }
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
