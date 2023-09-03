//
//  Category.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/25.
//

import SwiftUI

struct Category: View {
    var body: some View {
        VStack{
            HStack{
                Text("카테고리별 레시피")
                    .font(.title2)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            HStack{
                Button {
                    
                } label: {
                    VStack{
                        Image("bread")
                            .resizable()
                            .frame(width: 90, height: 90)
                        Text("제빵")
                            .foregroundColor(.black)
                    }
                }
                Button {
                    
                } label: {
                    VStack{
                        Image("baking")
                            .resizable()
                            .frame(width: 90, height: 90)
                        Text("제과")
                            .foregroundColor(.black)
                    }
                }
                
                Button {
                    
                } label: {
                    VStack{
//                        Circle()
//                            .foregroundColor(Color(hex:"EEEEEE"))
//                            .frame(width: 78, height: 78)
                           // .overlay{
                                Image("cake")
                                    .resizable()
                                    .frame(width: 90, height: 90)
                         //   }
                        Text("케이크")
                            .foregroundColor(.black)
                    }
                }
                Button {
                    
                } label: {
                    VStack{
                        Image("choco")
                            .resizable()
                            .frame(width: 90, height: 90)
                        Text("초콜렛")
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .background(.white)
        .cornerRadius(15)
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}
