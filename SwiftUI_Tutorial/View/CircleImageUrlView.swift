//
//  CircleImageUrlView.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 8.02.2024.
//

import SwiftUI
import Kingfisher

struct CircleImageUrlView: View {
    let title: String
    let imageUrl: String
    
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)!).resizable().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius: 20)
            Text(title).bold().italic()
        }
    }
}

#Preview {
    CircleImageUrlView(title: "What a lovely picture!", imageUrl: "https://picsum.photos/200/300").frame(width: 300, height: 300, alignment: .center)
}
