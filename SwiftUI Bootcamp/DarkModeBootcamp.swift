//
//  DarkModeBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI


///
/// 适配深色模式
///
/// 使用配色方案
///
/// .primary, .secondary 可以自动适配颜色模式，但是使用黑色和白色文本就只能在某种模式下才能看到
/// 亮模式看不到白色，深色模式看不到黑色文本
///
struct DarkModeBootcamp: View {
    // 获取系统的颜色模式
    @Environment(\.colorScheme) var colorSecheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("主颜色文本")
                        .foregroundColor(.primary)
                    Text("次重要颜色文本")
                        .foregroundColor(.secondary)
                    Text("黑色文本")
                        .foregroundColor(.black)
                    Text("白色文本")
                        .foregroundColor(.white)
                    Text("红色文本")
                        .foregroundColor(.red)
                    Text("颜色方案文本")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("直接获取系统颜色模式修改文本颜色")
                        .foregroundColor(colorSecheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("深色模式!")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
            .preferredColorScheme(.light)
        
        DarkModeBootcamp()
            .preferredColorScheme(.dark)
    }
}
