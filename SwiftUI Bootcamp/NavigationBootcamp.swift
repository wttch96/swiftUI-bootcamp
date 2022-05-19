//
//  NavigationBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/20.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("下一页") {
                    NavSecondScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            // .navigationBarTitleDisplayMode(.inline)
            // .navigationBarHidden(true)
            .navigationBarItems(
                leading:  HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(destination: {
                    NavSecondScreen()
                }, label: {
                    Image(systemName: "gear")
                })
                .accentColor(.red)
            )
        }
    }
}

struct NavSecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("第二个页面")
                .navigationBarHidden(true)
            
            VStack {
                Button("返回") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("下一页") {
                    Text("第三个页面")
                }
            }
        }
    }
}

struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
