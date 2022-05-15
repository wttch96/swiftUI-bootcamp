//
//  ImagesBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        VStack {
            Image("bg1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .foregroundColor(.red)
                // .clipped()
                // .cornerRadius(30)
                .clipShape(
                    // Circle()
                    // RoundedRectangle(cornerRadius: 15)
                    Ellipse()
                )
            Image("apple")
                // .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.green)
                .frame(width: 100, height: 100)
                .padding(60)
        }
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
