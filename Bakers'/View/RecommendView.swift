//
//  RecommendView.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/07.
//

import SwiftUI

struct RecommendView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                Creator()
                Video()
            }
        }
    }
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}
