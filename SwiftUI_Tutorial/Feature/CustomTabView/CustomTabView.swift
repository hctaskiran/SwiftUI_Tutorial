//
//  CustomTabView.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 20.02.2024.
//

import SwiftUI

struct CustomTabView: View {
    fileprivate func CarTabView() -> some View {
        return Text("No cars for renting yet").tabItem {
            Image(systemName: "car")
            Text("Rent a Car") }.tag(1)
    }
    
    fileprivate func BoatTabView() -> some View {
        return Text("No boats for renting yet").tabItem {
            Image(systemName: "sailboat")
            Text("Rent a Boat") }.tag(2)
    }
    
    var body: some View {
        VStack {
            TabView {
                CarTabView()
                BoatTabView()
            }
        }
    }
}
#Preview {
    CustomTabView()
}

