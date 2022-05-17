//
//  PaddingBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/17.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World! This is fun.")
                .foregroundColor(.pink)
                .background(.yellow)
                .padding(.horizontal, 10)
                .background(.blue)
                .padding(10)
                .background(.pink)
            
            VStack(alignment: .leading) {
                Text("Hello, IOS")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                
                Text("This is the description of what we will do on this screen. It is multiple lines and we will align th text to the leading edge.")
            }
            .padding()
            .padding(.vertical, 10)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
            )
            .padding(.horizontal, 10)
        }
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
