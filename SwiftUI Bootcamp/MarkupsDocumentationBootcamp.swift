//
//  MarkupsDocumentationBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

///
/// 标记和文档
///
/// 使用MARK可以在 minmap 中快速定位代码
///
struct MarkupsDocumentationBootcamp: View {
    
    // MARK: 属性
    
    @State var data: [String] = [
        "苹果", "橘子", "香蕉"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: body
    
    /*
     Working copy - things to do:
     1) Fix title
     2) Fix alert
     3) Fix something else
     */
    var body: some View {
        NavigationView { // START: NAV
            ScrollView { // START: SCROLLV
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            } // END: SCROLLV
            .navigationTitle("文档")
            .navigationBarItems(
                trailing: Button("修改") {
                    showAlert.toggle()
                }
            )
            .alert(isPresented: $showAlert) {
                getAlert(text: "这是一个弹窗!")
            }
        } // END: NAV
    }
    
    // MARK: 函数
    
    /// 根据标题生成弹窗
    ///
    /// 生成的弹窗只会有标题，不会生成信息，因为你没有指定信息
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    /// - Warning: 弹窗没有信息
    /// - Parameter text: 弹窗标题
    /// - Returns: 弹窗标题生成的弹窗
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: 预览

struct MarkupsDocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MarkupsDocumentationBootcamp()
    }
}
