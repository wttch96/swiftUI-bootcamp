//
//  AnimationTimingBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/19.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimating1: Bool = false
    @State var isAnimating2: Bool = false
    @State var isAnimating3: Bool = false
    @State var isAnimating4: Bool = false
    
    let timing = 1.0
    
    var body: some View {
        VStack {
            HStack {
                Button("动画:") {
                    // 弹簧
                    // withAnimation(.spring()) {
                    //     isAnimating1.toggle()
                    // }
                    withAnimation(
                        .spring(
                            // 响应时间
                            response: 0.5,
                            // 阻尼系数, 越小反弹越大
                            dampingFraction: 0.7,
                            blendDuration: 1.0)) {
                        isAnimating1.toggle()
                    }
                    // 线性
                    // withAnimation(.linear(duration: timing)) {
                    //     isAnimating1.toggle()
                    // }
                    // 开始慢，结束快
                    withAnimation(.easeIn(duration: timing)) {
                        isAnimating2.toggle()
                    }
                    // 两头慢，中间快
                    withAnimation(.easeInOut(duration: timing)) {
                        isAnimating3.toggle()
                    }
                    // 开始快，结束慢
                    withAnimation(.easeOut(duration: timing)) {
                        isAnimating4.toggle()
                    }
                }
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating1 ? 350 : 50, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating2 ? 350 : 50, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating3 ? 350 : 50, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating4 ? 350 : 50, height: 100)
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
