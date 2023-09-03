//
//  Video.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/28.
//

import SwiftUI
import YouTubePlayerKit

struct Video: View {
    
//    var youtubeId = [ YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=w87fOAG8fjk"),
//                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=_p8AsQhaVKI"),
//                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=n5jXg_NNiCA"),
//                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=oaqHdULqet0"),
//                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=UThGcWBIMpU")
//    ]
    
    var body: some View {
        ScrollView{
            HStack{
                Text("추천 동영상")
                    .font(.title2)
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            ForEach(0..<5, id:\.self) {_ in
                VideoRow()
            }
        }
    }
}

struct Video_Previews: PreviewProvider {
    static var previews: some View {
        Video()
    }
}
