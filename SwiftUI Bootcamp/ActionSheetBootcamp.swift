//
//  ActionSheet.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/21.
//

import SwiftUI


///
/// actionSheet已经不推荐使用，使用 confirmationDialog代替
///
/// 从下方出来的一个选项对话框
///
struct ActionSheetBootcamp: View {
    @State var show = false
    
    var body: some View {
        VStack {
            Button(action: {
                show.toggle()
            }, label: {
                Text("按钮")
            })
            .confirmationDialog(
                "确认么？",
                isPresented: $show,
                titleVisibility: .visible
            ) {
                Button() {
                    
                } label: {
                    Text("选项1")
                }
                Button(role: .cancel) {
                    
                } label: {
                    Text("取消")
                }
            }
        }
    }
}

struct ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
