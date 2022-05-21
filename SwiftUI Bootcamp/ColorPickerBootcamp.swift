//
//  ColorPickerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .white
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor.edgesIgnoringSafeArea(.all)
                
                ColorPicker(selection: $backgroundColor, supportsOpacity: true) {
                    Text("请选择颜色:")
                }
                .padding()
                .background(.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
            }
            .navigationTitle("颜色选择器")
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
