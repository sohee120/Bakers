//
//  CreatorCell.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/28.
//

import SwiftUI
import Kingfisher

struct CreatorCell: View {
    
    func errorImage() -> String{
        var https : String = "https://"
        if let infolist = Bundle.main.infoDictionary {
            if let url = infolist["ThumbnailImageError"] as? String {
                https += url
            }
        }
        return https
    }
    
    var body: some View {
        VStack{
            KFImage(URL(string: "https://yt3.googleusercontent.com/ytc/AOPolaQzm2IsOcKcVjlGrxbbpye3m6VyxOaZCSmtyk0ziQ=s176-c-k-c0x00ffffff-no-rj") ?? URL(string: errorImage()))
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 100))
            Text("진영")
                .font(.title2)
        }
        .padding()
        .frame(width: 150, height: 150)
        .background(Color(hex: "EEEEEE"))
        .cornerRadius(13)
        //.border(.black)
    }
}

struct CreatorCell_Previews: PreviewProvider {
    static var previews: some View {
        CreatorCell()
    }
}
