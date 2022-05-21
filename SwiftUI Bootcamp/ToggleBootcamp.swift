//
//  ToggleBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleOn = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                HStack {
                    Text("状态：")
                    Text(toggleOn ? "在线" : "离线")
                }
                
                HStack {
                    Spacer()
                    Toggle("开关:", isOn: $toggleOn)
                        // 开关样式：
                        // 修改开启的颜色
                        .toggleStyle(SwitchToggleStyle(tint: .pink))
                }
                // 按钮样式
                Toggle("开关2:", isOn: $toggleOn)
                    .toggleStyle(ButtonToggleStyle())
                Spacer()
            }
            .padding()
            .navigationTitle("Toggle Bootcamp!")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
