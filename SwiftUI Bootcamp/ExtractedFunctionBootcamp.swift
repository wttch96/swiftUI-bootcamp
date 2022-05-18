//
//  ExtractedFunctionBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/18.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    @State var backgroundColor: Color = .pink
    
    func background() -> some View {
        backgroundColor.edgesIgnoringSafeArea(.all)
    }
    
    func buttonPressed() {
        withAnimation(.easeInOut(duration: 1)) {
            backgroundColor = .yellow
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
        }
    }
    
    var body: some View {
        ZStack {
            // 背景
            background()
            
            // 内容
            contentLayer
        }
    }
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}
