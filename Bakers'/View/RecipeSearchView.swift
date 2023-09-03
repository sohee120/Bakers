//
//  RecipeSearchView.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/12.
//

import SwiftUI

private enum FocusableField: Hashable {
    case search
}

struct RecipeSearchView: View {
    
    @State private var searchWord: String = ""
    
    @FocusState private var focus: FocusableField?
    
    var body: some View {
        VStack{
            TextField("\(Image(systemName: "magnifyingglass")) 레시피를 검색해주세요", text: $searchWord)
                .textContentType(.oneTimeCode)
                .tint(Color.black)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .focused($focus, equals: .search)
                .submitLabel(.search)
        }
    }
}

struct RecipeSearchView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSearchView()
    }
}
