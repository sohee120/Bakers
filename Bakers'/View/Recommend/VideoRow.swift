//
//  VideoRow.swift
//  Bakers'
//
//  Created by 윤소희 on 2023/08/28.
//

import SwiftUI
import YouTubePlayerKit

struct VideoRow: View {
    
    var youtubeId = [ YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=3R3iMZFb-UM"),
                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=_p8AsQhaVKI"),
                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=n5jXg_NNiCA"),
                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=oaqHdULqet0"),
                      YouTubePlayer(stringLiteral: "https://www.youtube.com/watch?v=UThGcWBIMpU")
    ]
    
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    //MARK: - 썸네일 보여준 후 유튜브로 이동할건지 유튜브 영상 연동할건지 고르기
                    Button {
                        let item = youtubeId[0].pause()
                    } label: {
                        YouTubePlayerView(youtubeId[0])
                            .frame(width: 150, height: 85)
                    }
                    .padding(.leading, -20)
                    .padding(.trailing)
                    //Spacer()
                    VStack{
                        Text("바삭한 초코칩 쿠키 만들기")
                        Spacer()
                        Text("오늘도 베이킹 . 조회수 1.7만회")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical)
                    
                }
                //  .padding(.horizontal)
            }
            .frame(width:Screen.maxWidth * 0.95, height: 100)
            //.border(.blue)
            Divider()
        }
    }
}

struct VideoRow_Previews: PreviewProvider {
    static var previews: some View {
        VideoRow()
    }
}
