//
//  ButtonBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/18.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title."

    
    var body: some View {
        VStack {
            Text(title + " Pressed!")
            
            Button("点我") {
                self.title = "Button #1"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button #2"
            }, label: {
                Text("Button")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75, alignment: .center)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.pink)
                    )
            })
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 1.0)
                    )
            })
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
            .previewInterfaceOrientation(.portrait)
    }
}
