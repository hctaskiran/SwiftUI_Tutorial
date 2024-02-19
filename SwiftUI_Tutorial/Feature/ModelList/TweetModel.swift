//
//  TweetModel.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 19.02.2024.
//

import Foundation

struct TweetModel: Identifiable {
    let id: UUID = UUID()
    let username: String
    var body: String
    var likeCounter: Int?
}

extension TweetModel {
    static let tweets = [
        
        TweetModel(username: "hako", body: "hello", likeCounter: 31),
        TweetModel(username: "hako2", body: "alo", likeCounter: 10),
        TweetModel(username: "hako3", body: "he")
                              
    ]
    
    static let fakeTweet = TweetModel(username: "hakofake", body: "fake", likeCounter: 33231)
    
}

