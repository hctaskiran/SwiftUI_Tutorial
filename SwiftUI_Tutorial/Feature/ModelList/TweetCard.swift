//
//  TweetCard.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 19.02.2024.
//

import SwiftUI

struct TweetCard: View {
    let tweet: TweetModel
    var body: some View {
        VStack (alignment: .leading) {
            Spacer()
            Text(tweet.username).font(.title2)
            Text("\(tweet.body)").font(.title3)
            
            if (tweet.likeCounter != nil) {
                HStack {
                    Text("\(tweet.likeCounter!)")
                    Image(systemName:  "heart.circle.fill")
                    Spacer()
                }
            }
            Spacer()
        }.padding(10).frame(height: 100, alignment: .top).overlay(RoundedRectangle(cornerRadius: 20).stroke(.red, lineWidth: 2)).padding(5)
    }
}

#Preview {
    TweetCard(tweet: TweetModel.fakeTweet).previewLayout(.sizeThatFits)
}
