//
//  BindingBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/18.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var color: Color = .pink
    @State var title: String = "title"
    
    var body: some View {
        ZStack {
            
            color.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.title)
                
                SubView(backgroundColor: $color, title: $title)
            }
        }
    }
}

struct SubView: View {
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var count = 0
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            count += 1
            title = "新标题通过按钮\(count)"
        }) {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(15)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
