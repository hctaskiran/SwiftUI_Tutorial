//
//  SampleListView.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 8.02.2024.
//

import SwiftUI

struct SampleListView: View {
    
    private let items: Array<String> = [
        "chevron.left",
        "chevron.right",
        "chevron.left",
        "chevron.right"
    ]
    
    var body: some View {
            List{
                Section(header: Text("Account").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/),content:{
                    HStack{
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Text("Hello")
                    Text("Hello")
                })
                
                Section(header: Text("Application").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/),content:{
                    HStack{
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Text("Hello")
                    HStack{
                        ForEach(items, id: \.self) { (item) in
                             Image(systemName: item)
                        }
                    }
                })
            }
    }
}

#Preview {
    SampleListView()
}
