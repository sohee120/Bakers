//
//  RecipeRowCell.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/26.
//

import SwiftUI

struct RecipeCell: View {
    var body: some View {
      //  HStack {
            VStack {
                Image("cookie")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: Screen.maxWidth*0.48, height: Screen.maxWidth*0.48)
                    .cornerRadius(10)
                HStack{
                    Text("바삭한 초코칩 쿠키 만들기")
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    
                }
            }
            .background(.white)
            
//            VStack {
//                Image("baking")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: Screen.maxWidth*0.4, height: Screen.maxWidth*0.4)
//                HStack{
//                    Text("제목")
//                        .font(.title2)
//                        .padding(.horizontal)
//                    Spacer()
//                }
//            }
//            .border(.black)
//            .padding(.leading, 5)
            
//        }
//        .padding(.horizontal)

        
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell()
    }
}
