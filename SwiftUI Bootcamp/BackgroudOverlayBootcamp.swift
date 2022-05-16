//
//  BackgroudOverlayBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

struct BackgroudOverlayBootcamp: View {
    let shadowColor = Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 0.5212334437))
    let gradient = Gradient(colors: [Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))])
    var body: some View {
        VStack {
            Text("Hello, World!")
                .background(
                    // Color.red
                    // LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    Circle().fill(Color.orange)
                        .frame(width: 100, height: 100, alignment: .center)
                )
                .background(
                    Circle().fill(.pink)
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .padding(40)
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(.purple)
                        .frame(width: 120, height: 120)
                )
                .padding(20)
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .topLeading
                )
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 150, height: 150)
                    , alignment: .center
                )
                .padding()
            Image(systemName: "heart.fill")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .background(
                    Circle()
                        .fill(
                            LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: shadowColor, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(.blue)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: shadowColor, radius: 10, x: 5, y: 5)
                            , alignment: .bottomTrailing
                        )
                )
                .padding(40)
        }
    }
}

struct BackgroudOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroudOverlayBootcamp()
    }
}
