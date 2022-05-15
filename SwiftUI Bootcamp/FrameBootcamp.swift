//
//  FrameBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            // .frame(width: 200, height: 200, alignment: .leading)
            // .background(Color.red)
            
            // .frame(width: 300, height: 300, alignment: .topLeading)
            // .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            // .background(Color.purple)
            .frame(height: 100, alignment: .top)
            .background(.purple)
            .frame(width: 150)
            .background(.pink)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.yellow)
            .frame(height: 400)
            .background(.orange)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.red)
            .clipped()
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
