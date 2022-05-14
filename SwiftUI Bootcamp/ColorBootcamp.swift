//
//  ColorBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

struct ColorBootcamp: View {
    let color = Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1))
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    //Color.primary
                    //color
                    //Color(UIColor.secondarySystemBackground)
                    Color("CustomColor")
                )
                .frame(width: 300, height: 200)
                .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 20, y: 20)
        }
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
            
            
    }
}
