//
//  ForEachBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/17.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["ONE", "TWO"]
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("Hi:\(data[index]), \(index)")
            }
            ScrollView {
                ForEach(0..<100) { index in
                    Circle().frame(width: 2, height: 2)
                }
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
