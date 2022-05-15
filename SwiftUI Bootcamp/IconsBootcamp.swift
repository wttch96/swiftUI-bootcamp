//
//  IconsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

struct IconsBootcamp: View {
    let color = Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
    var body: some View {
        VStack {
            Image(systemName: "person.fill.badge.plus")
                //.resizable()
                //.aspectRatio(contentMode: .fill)
                //.scaledToFit()
                //.scaledToFill()
                .renderingMode(.original)
                .font(.system(size: 100))
                .foregroundColor(color)
                //.frame(width: 300, height: 300)
                //.clipped()
        }
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
