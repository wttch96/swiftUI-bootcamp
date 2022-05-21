//
//  TextEditorBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textValue = "初始的字符串"
    
    @State var savedText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // 多行文本使用 TextEdittor
                // 单行还是使用 TextField 好
                TextEditor(text: $textValue)
                    .frame(height: 250)
                    .cornerRadius(16)
                    // 内部的颜色
                    .colorMultiply(Color.gray)
                    // 真实的背景颜色
                    .background(.blue)
                Button(action: {
                    savedText = textValue
                }, label: {
                    Text("保存")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(16)
                })
                
                Text(savedText)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.pink)
                    .cornerRadius(16)
                
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEidtor Bootcamp!")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
