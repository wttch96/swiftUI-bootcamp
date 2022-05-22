//
//  OnTapGestureBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

///
/// 点击手势和按钮不同，按钮点击的时候会有明显的颜色状态变化
///
struct OnTapGestureBootcamp: View {
    
    @State var count = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("你敲击了\(count)次!")
            }
            // 双击, count 点击的次数
            .onTapGesture(count: 2, perform: {
                count += 1
            })
            // 长按
            .onLongPressGesture {
                count += 5
            }
            .navigationTitle("手势👍")
        }
    }
}

struct OnTapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnTapGestureBootcamp()
    }
}
