//
//  RecipeDetail.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/28.
//

import SwiftUI

struct RecipeDetail: View {
    var body: some View {
        ScrollView {
            Image("cookie")
                .resizable()
                .scaledToFit()
                .frame(width: Screen.maxWidth*0.95)
            Text("바삭한 초코칩 쿠키")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            Ingredient()
            
            VStack(alignment: .leading) {
                Text("조리 순서")
                    .font(.title)
                    .bold()
                    .padding(.bottom)
                
                VStack(alignment: .leading, spacing: 30){
                    Text("1. 핸드믹서로 버터를 부드럽게 풀어주세요.")
                    Text("2. 설탕과 소금을 넣고 핸드믹서로 휘핑해주세요.")
                    Text("3. 박력분, 아몬드가루, 베이킹파우더를 체 쳐서 넣어주세요.")
                    Text("4. 주걱으로 11자로 섞어주세요.")
                    Text("5. 흰 가루가 살짝 남아있을 때 초코칩을 넣고 섞어주세요.")
                    Text("6. 팬에 8g씩 분할하여 팬닝해주세요.")
                    Text("7. 180도 예열 후 165도에 13-14분 구워주세요.")
                }
                .font(.title2)
                
            }
        }
    }
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail()
    }
}
