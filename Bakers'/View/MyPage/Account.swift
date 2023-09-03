//
//  Account.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/29.
//

import SwiftUI

struct Account: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("계정")
                .font(.title2)
                .bold()
                .padding(.horizontal)
                .padding(.top)
                .padding(.leading, 5)
            
            NavigationLink {
                //EditMyPageView(userVM: userVM)
            } label: {
                HStack() {
                    Image(systemName: "pencil")
                        .font(.system(size: 25))
                        .padding(.trailing, 10)
                    
                    Text("최근 본 레시피")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title3)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.vertical)
            }
            .padding(.horizontal)
            
            NavigationLink {
             //   BookmarkedMagazine(userVM: userVM, magazineVM: magazineVM)
            } label: {
                HStack {
                    Image(systemName: "bookmark")
                        .font(.system(size: 22))
                        .padding(.leading, 2.8)
                        .padding(.trailing, 13)
                    
                    Text("저장된 레시피")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title3)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.horizontal)
            
            NavigationLink {
              //  MyPgeMyCommunity(commentVm: commentVm, communityVM: communityVM, userVM: userVM, magazineVM: magazineVM, presented: $presented)
            } label: {
                HStack {
                    Image(systemName: "text.bubble")
                        .font(.system(size: 20))
                        .padding(.trailing, 10)
                    
                    Text("나의 노트")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.title3)
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .padding(.horizontal)
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
