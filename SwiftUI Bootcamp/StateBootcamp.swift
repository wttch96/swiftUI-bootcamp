//
//  StateBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/18.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroudColor: Color = .green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // backgroud
            backgroudColor
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle  )
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("按钮1") {
                        backgroudColor = .pink
                        myTitle = "点击了按钮1"
                        count += 1
                    }
                    
                    Button("按钮2") {
                        backgroudColor = .purple
                        myTitle = "点击了按钮2"
                        count += 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
