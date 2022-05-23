//
//  BadgeBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/24.
//

import SwiftUI


///
/// badge 只在 List 和 TabView 中显示
///
struct BadgeBootcamp: View {
    var body: some View {
        VStack {
            List {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .badge(Text("10"))
            }
            
            TabView {
                Text("H")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Hello")
                    }
                    .badge(Text("badge"))
            }
        }
    }
}

struct BadgeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBootcamp()
    }
}
