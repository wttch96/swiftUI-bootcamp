//
//  SwipeActionBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI

struct SwipeActionBootcamp: View {
    var body: some View {
        List {
            Text("测试")
                .swipeActions(
                    edge: .trailing, // 方向
                    allowsFullSwipe: true, //完全滑动时是否执行第一个动作
                    content: {
                        Button("1") {
                            
                        }
                        .tint(.green)
                        Button("2") {
                            
                        }
                        .tint(.red)
                        Button(action: {}, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.white)
                        })
                        .tint(.purple)
                })
                .swipeActions(edge: .leading, allowsFullSwipe: false, content: {
                    Button("2") {
                        
                    }
                    .tint(.red)
                    Button(action: {}, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                    })
                    .tint(.purple)
                })
        }
    }
}

struct SwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionBootcamp()
    }
}
