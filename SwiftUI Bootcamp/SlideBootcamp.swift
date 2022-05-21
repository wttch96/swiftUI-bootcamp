//
//  SlideBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct SlideBootcamp: View {
    @State var red  = 0.0
    @State var green  = 0.0
    @State var blue  = 0.0
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(red: red, green: green, blue: blue))
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 80)
            
            getColorView(color: .red, colorBinding: $red)
            getColorView(color: .green, colorBinding: $green)
            getColorView(color: .blue, colorBinding: $blue)
            
           
            Spacer()
        }
    }
    
    func getColorView(color: Color, colorBinding: Binding<Double>) -> some View {
        HStack {
            Circle()
                .fill(color)
                .frame(width: 24, height: 24)
            
            Slider(
                value: colorBinding,
                in: 0.0 ... 1.0,
                step: 0.01,
                onEditingChanged: {changed in
                
                },
                minimumValueLabel: Text("0"),
                maximumValueLabel: Text("100"),
                label: {
                }
            )
        }
    }
}

struct SlideBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SlideBootcamp()
    }
}
