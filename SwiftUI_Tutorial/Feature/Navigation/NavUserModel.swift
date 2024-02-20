//
//  NavUserModel.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 20.02.2024.
//

import Foundation

struct NavUserModel: Identifiable {
    let id: UUID = UUID()
     let name: String
}

extension NavUserModel {
    static let samples: [NavUserModel] = [
        NavUserModel(name: "HAKO"),
        NavUserModel(name: "EMO "),
        NavUserModel(name: "ARDA"),
        NavUserModel(name: "VB10"),
        
    ]
}
