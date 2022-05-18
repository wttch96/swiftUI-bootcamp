//
//  SafeAreaBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/18.
//

import SwiftUI

///
/// 安全区域
///
/// 比如刘海顶部和屏幕下面的区域除外的区域
///
/// 一般给用户展示的内容都应该在安全区域内，安全区域外一般可以设置为背景等
///
struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red, ignoresSafeAreaEdges: [])
//        }
            
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
        .background(.red, ignoresSafeAreaEdges: .all)
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
