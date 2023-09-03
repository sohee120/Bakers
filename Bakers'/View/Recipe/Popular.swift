//
//  Popular.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/25.
//

import SwiftUI

struct Popular: View {
    var body: some View {
        VStack{
            HStack{
                Text("인기있는 레시피")
                    .font(.title2)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
        }
    }
}

struct Popular_Previews: PreviewProvider {
    static var previews: some View {
        Popular()
    }
}
