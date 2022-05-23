//
//  SubmitBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/24.
//

import SwiftUI

struct SubmitBootcamp: View {
    
    @State var name: String = ""
    @State var isSubmit: Bool = false
    
    var body: some View {
        VStack {
            TextField("输入你的名字", text: $name)
                .submitLabel(.next)
                .onSubmit {
                    isSubmit.toggle()
                }
            if isSubmit {
                Text("已提交!")
            }
        }
    }
}

struct SubmitBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitBootcamp()
    }
}
