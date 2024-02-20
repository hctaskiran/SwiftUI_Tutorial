//
//  UserDetailModel.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 20.02.2024.
//

import SwiftUI

struct UserDetailView: View {
    let user: NavUserModel
    var body: some View {
        Text(user.name)
    }
}

#Preview {
    UserDetailView(user: NavUserModel.samples.first!)
}
