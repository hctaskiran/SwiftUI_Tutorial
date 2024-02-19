//
//  ModelListView.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 19.02.2024.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack {
            Text("Welcome to Tweet Model List!")
                .font(.title)
            .fontWeight(.light)
            
            List(TweetModel.tweets) {data in
                TweetCard(tweet: data )
            }.listStyle(.sidebar )
            
        }
    }
}

#Preview {
    ModelListView()
}
