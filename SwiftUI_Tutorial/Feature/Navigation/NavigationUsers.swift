//
//  NavigationUsers.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 20.02.2024.
//

import SwiftUI

struct NavigationUsers: View {
    @State private var isPresented: Bool = false
    var body: some View {
        NavigationView {
            List(NavUserModel.samples, id: \.id) {data in
                NavigationLink(destination: {
                    UserDetailView(user: data)
                }, label: {
                    Text(data.name)
                }
                ).sheet(isPresented: $isPresented, onDismiss: {
                    print("Basildi")
                }, content: {
                    Button("Label") {
                        isPresented.toggle()
                    }
                    
                }
                )
            }.listStyle(.grouped).navigationTitle("Yasarken Olenler")
                .toolbar{
                    ToolbarItem {
                        Button("Toggle Sheet") {
                            isPresented.toggle()
                        }
                    }
                }
        }
        }
    }


#Preview {
    NavigationUsers()
}
