//
//  IfLetGuardBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

///
/// if let guard
///
/// if let 语句可以用来很安全的处理可选类型
///
struct IfLetGuardBootcamp: View {
    // 可选类型
    @State var displayText: String? = nil
    
    @State var isLoading: Bool = false
    
    @State var currentUserId: String? = "Wttch"
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                // 如果displayText 不为 nil, 让 text 等于 displayText, 并执行
                // 最好不要使用可选类型!，这样不优雅
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                // loadData()
                loadData2()
            }
        }
    }
    
    // 使用 if let
    func loadData() {
        // 如果是当前用户存在...之类的
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                displayText = "This is the new data! User id is: \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    // 使用 guard
    func loadData2() {
        // 守卫，如果可选类型为 nil 执行 else 内容，结束函数
        guard let userID = currentUserId else {
            displayText = "Error. This is no User ID!"
            return
        }
        
        // 否则继续执行
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
