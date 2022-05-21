//
//  TextFieldBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/21.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("随便输入点什么：", text: $textFieldText)
                    // .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
            
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("保存")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(( textIsAppropriate() ? Color.blue : Color.gray).cornerRadius(16))
                        .foregroundColor(.white)
                        .font(.headline)
                })
                // 禁用
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3).cornerRadius(10))
                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("输入框测试:")
        }
    }
    
    func textIsAppropriate() -> Bool {
        return textFieldText.count >= 3
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
