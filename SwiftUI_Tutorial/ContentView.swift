//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 10.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Group {
//                MARK: Login Page
                Text("Hako33231").foregroundColor(.purple)
                    
            }
            Group{
//                MARK: Register Page
                VStack {
                    Image(systemName: "personalhotspot")
                    Text("Hako33231").foregroundColor(.yellow).bold().italic()
                }
            }
        }
    }
}

fileprivate func demoView() -> some View {
    return VStack {
        Rectangle().frame(width: 100, height: 100, alignment: .center).foregroundColor(.pink)
        Circle().frame(height: 100, alignment: .center).foregroundColor(.blue)
        Text("Sample1")
        Text("Sample2")
        Text("Sample3")
        Text("Sample4")
            .font(.title)
            .foregroundColor(Color.blue)
        Spacer()
        HStack () {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            Spacer(minLength: 100)
            ZStack () {
                Circle()
                Text("33231").foregroundColor(.pink)
            }
        }
    }
}


#Preview {
    ContentView()
}

fileprivate func sampleVerticalView() -> some View {
    return HStack{
        Spacer().frame(width: 100, alignment: .center)
        Text("Hako!").padding()
        Text("Hako!").padding()
        Text("Hako!").padding()
        Color.blue
        Spacer().frame(width: 100, alignment: .center)
    }
}

fileprivate func sampleHorizontalView() -> some View {
    return VStack{
        Spacer().frame(width: 100, alignment: .center)
        Text("Hako!").padding()
        Text("Hako!").padding()
        Text("Hako!").padding()
        Color.red
        Spacer().frame(width: 100, alignment: .center)
    }
}

fileprivate func sampleZView() -> some View {
    return ZStack(alignment: Alignment.bottom) {
        Color.red
        Spacer().frame(width: 100, alignment: .center)
        Text("Hako!").padding()
        Text("Hako!").padding()
        Text("Hako!").padding()
        Spacer().frame(width: 100, alignment: .center)
    }
}
