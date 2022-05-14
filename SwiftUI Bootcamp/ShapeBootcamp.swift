//
//  ShapeBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

struct ShapeBootcamp: View {
    @State var fromValue = 1.0
    var body: some View {
        VStack {
            Circle()
                // 填充
                //.fill(Color.green)
                // 前景，类似填充
                //.foregroundColor(.pink)
                //.stroke()
                //.stroke(Color.red, lineWidth: 24)
                // 高级，lineWidth：线宽，lineCap：线形状，dash：线间距
                //.stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [10]))
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            Ellipse()
                .stroke(Color.purple, lineWidth: 20)
                .frame(width: 200, height: 100)
                .padding()
            Capsule(style: .circular)
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100)
                .padding()
            RoundedRectangle(cornerRadius: 16)
                .trim(from: 0.1, to: 0.6)
                .frame(width: 300, height: 150)
        }
    }
}

struct ShapeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootcamp()
    }
}
