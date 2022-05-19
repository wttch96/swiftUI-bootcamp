//
//  TransitionBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/19.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    withAnimation(.spring()) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    // 屏幕高度的一半
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    // 从一个方向出来再返回
                    // .transition(.move(edge: .bottom))
                    // 不透明度
                    // .transition(.opacity)
                    // 可以组合出现和消失使用不同的动画,第一次创建是从左侧进入，后面好像不是删除重建，所以后面就不生效了
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
                
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
