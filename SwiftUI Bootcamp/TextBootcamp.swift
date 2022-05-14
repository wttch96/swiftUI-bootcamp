//
//  TextBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/15.
//

import SwiftUI

///
/// 复杂的Text
///
struct TextBootcamp: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/.capitalized)
                .font(.body)
                //.fontWeight(.heavy)
                .bold()
                // 下划线，颜色
                .underline(true, color: Color.red)
                .italic()
                // 删除线，颜色
                .strikethrough(true, color: .green)
            Text("自定义字体")
                .font(.system(size: 24, weight: .semibold, design: .serif))
            Text("你好，SwiftUI，这是一个多行文字数据。我们可以设置它的行距（baselineOffset）、字距（kerning）和多行对齐方式(multilineTextAlignment)！")
                .baselineOffset(12.0)
                .kerning(1.2)
                // 不会对单行文本起作用
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
                .frame(width: 300, height: 100, alignment: .center)
                // 允许字体缩放到原有的 10%
                .minimumScaleFactor(0.1)
        }
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
