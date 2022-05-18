//
//  AnimationBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/19.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                // 延迟
                // Animation.default.delay(2)
                // 重复动画 autoreverses 是否反转 true:自动翻转，false:重新开始
                // Animation.default.repeatCount(10, autoreverses: false)
                withAnimation(.default.repeatCount(10, autoreverses: true)) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
