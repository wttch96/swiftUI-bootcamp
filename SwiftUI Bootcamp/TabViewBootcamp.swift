//
//  TabViewBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selected = 0
    
    init() {
        // TabBar 的选项
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        // TabBar 的背景颜色
        UITabBar.appearance().backgroundColor = UIColor.gray.withAlphaComponent(0.8)
    }
    
    var body: some View {
        TabView(selection: $selected, content: {
            // 主视图
            HomeView(selected: $selected)
                // tab 选项卡
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("主页")
                }
                .tag(0)
            
            Text("页面：Browse")
                .tabItem {
                    Image(systemName: "globe")
                    Text("浏览器")
                }
                .tag(1)
            
            Text("页面：Home")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("我的")
                }
                .tag(2)
        })
        // 左右翻页
        // .tabViewStyle(PageTabViewStyle())
        .accentColor(.pink)
    }
}

struct HomeView : View {
    @Binding var selected: Int
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.3).edgesIgnoringSafeArea(.all)
            
            VStack {
                
                TabView {
                    ForEach(icons, id: \.self) {icon in
                        Image(systemName: icon)
                            .resizable()
                            .scaledToFit()
                            .padding(30)
                    }
                }
                .background(
                    RadialGradient(gradient: Gradient(colors: [.orange, .pink]), center: .center, startRadius: 5, endRadius: 200)
                )
                .frame(height: 300)
                .tabViewStyle(PageTabViewStyle())
                
                Button(action: {
                    selected = 2
                }) {
                    Text("去我的页面")
                        .foregroundColor(.white)
                }
            }
        }
    }
}


struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
