//
//  GradientsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

///
/// 渐变
///
struct GradientsBootcamp: View {
    let color1 = Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
    let color2 = Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    // 线性渐变
                     LinearGradient(gradient: Gradient(colors: [
                        color1, color2
                     ]),
                     startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 300, height: 200)
                .padding()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    // 放射渐变
                     RadialGradient(gradient: Gradient(colors: [color1, color2]), center: .topTrailing, startRadius: 100, endRadius: 300)
                )
                .frame(width: 300, height: 200)
                .padding()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [color1, color2]), center: .topLeading,
                                    angle: .degrees(180 + 45))
                )
                .frame(width: 300, height: 200)
            }
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
