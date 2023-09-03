//
//  Ingredient.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/28.
//

import SwiftUI

struct Ingredient: View {
    var body: some View {
        VStack{
            HStack{
                Text("재료")
                    .font(.title2)
                Spacer()
                Text("미니 사이즈 60개 분량")
                    .font(.title2)
            }
            .bold()
            .padding(.horizontal)
            
            Divider()
            HStack{
                VStack(alignment: .leading){
                    Text("무염버터 110g")
                    Text("백설탕 80g")
                    Text("소금 1.5g")
                    Text("달걀 15g")
                    Text("바닐라 익스트랙 2g")
                    Text("박력분 70g")
                    Text("아몬드 가루 30g")
                    Text("베이킹 파우더 2g")
                    Text("초코칩 80g")
                }
                .font(.title3)
                .padding(.leading)
              Spacer()
            }
            .padding(.bottom)
        }
    }
}

struct Ingredient_Previews: PreviewProvider {
    static var previews: some View {
        Ingredient()
    }
}
