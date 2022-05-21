//
//  ContextMenuBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/21.
//

import SwiftUI

///
/// IOS：长按弹出菜单
///
struct ContextMenuBootcamp: View {
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.orange.cornerRadius(16))
        .contextMenu(menuItems: {
            Text("菜单1")
            Text("菜单2")
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
