//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by Haktan Can Taşkıran on 10.12.2023.
//

import SwiftUI
import Kingfisher

struct IconFieldView: View {
    var iconName: String = "Hello"
    @State var textFieldValue: String = ""
    @State var textFieldValuee: String = ""
    
    var body: some View {
        VStack {
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $textFieldValue)
            Text(textFieldValue)
                .font(.headline)
                .bold()
            
            Image(systemName: textFieldValue.lowercased()).frame(width: 100, height: 100, alignment: .center)
            
            TextField("Placeholdr", text: $textFieldValuee)
            Text(textFieldValuee)
                .font(.headline)
                .bold()
            
            Image(systemName: textFieldValuee.lowercased()).frame(width: 100, height: 100, alignment: .center)
        }
    }
}


struct ContentView: View {
    private let imageurl = "https://picsum.photos/200/300"
    private var usman: String = "What a lovely view!"
    
    var body: some View {
        CircleImageUrlView(title: usman, imageUrl: imageurl).frame(width: 300, height: 300, alignment: .center)
        
    }
}

fileprivate func groupViews() -> some View {
    return VStack {
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
