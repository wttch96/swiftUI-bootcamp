//
//  StepperBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

///
/// 步进器
///
struct StepperBootcamp: View {
    
    @State var age: Int = 18
    
    @State var width = 50.0
    
    var body: some View {
        VStack {
            Stepper(value: $age, in: 18...80) {
                Text("选择你的年龄:")
                Text("\(age)")
            }
            
            RoundedRectangle(cornerRadius: 16)
                .fill(.pink)
                .frame(width: width, height: 50)
            
            Stepper("调整矩形长度", onIncrement: {
                width += 10.0
                width = min(width, 300.0)
            }, onDecrement: {
                width -= 10.0
                width = max(width, 50.0)
            })
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
