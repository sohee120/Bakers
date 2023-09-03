//
//  MyPageView.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/07.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        VStack(alignment: .leading){
            ScrollView{
                //MARK: 계정 섹션
                Account()
                
                //MARK: 지원 섹션
                Support()
                
                //MARK: 정보 섹션
                Info()
            }
            Spacer()
        }
        //        .navigationTitle("설정")
        //        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
