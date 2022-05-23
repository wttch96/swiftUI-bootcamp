//
//  AppStorageBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI

///
/// AppStorage 类似内置的小型数据库，可以在关闭后重新加载而不丢失
///
/// 他的实现类似 UserDefaults.standard.set, UserDefaults.standard.string 等，用起来更方便
///
struct AppStorageBootcamp: View {
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "在这里添加名字")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("保存") {
                let name = "Wttch"
                currentUserName = name
            }
            
            Button("删除") {
                UserDefaults.standard.removeObject(forKey: "name")
            }
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
