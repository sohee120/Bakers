//
//  Support.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/29.
//

import SwiftUI

struct Support: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("지원")
                .font(.title2)
                .bold()
                .padding()
                .padding(.leading, 5)
            
            NavigationLink {
               // UserServiceView()
            } label: {
                HStack {
                    Image(systemName: "message")
                        .font(.system(size: 19))
                        .padding(.leading, 3)
                        .padding(.trailing, 11)
                    Text("고객센터")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title2)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.horizontal)
            
            
            NavigationLink {
             //   UserFeedbackView()
            } label: {
                HStack {
                    Image(systemName: "envelope")
                        .font(.system(size: 19))
                        .padding(.leading, 3)
                        .padding(.trailing, 12)
                    //                            .resizable()
                    //                            .frame(width: 20, height: 20)
                    //                            .aspectRatio(contentMode: .fit)
                    //                            .padding(.trailing)
                    Text("피드백")
                        .font(.title3)
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .font(.title2)
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
    }
}

struct Support_Previews: PreviewProvider {
    static var previews: some View {
        Support()
    }
}
