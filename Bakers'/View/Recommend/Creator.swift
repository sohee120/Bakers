//
//  Creator.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/28.
//

import SwiftUI

struct Creator: View {
    var body: some View {
        VStack{
            HStack{
                Text("추천 크리에이터")
                    .font(.title2)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(0..<10, id:\.self) { _ in
                        NavigationLink {
                            CreatorDetail()
                        } label: {
                            CreatorCell()
                        }
                    }
                }
                .padding(.horizontal, 7)
            }
        }
    }
}

struct Creator_Previews: PreviewProvider {
    static var previews: some View {
        Creator()
    }
}
