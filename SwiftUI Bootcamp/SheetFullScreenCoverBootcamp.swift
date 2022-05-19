//
//  SheetFullScreenCoverBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/19.
//

import SwiftUI

struct SheetFullScreenCoverBootcamp: View {
    
    @State var showSheet: Bool = false
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
                // 再那个view上似乎不影响，可以随便选择一个视图
                .fullScreenCover(isPresented: $showFullScreen) {
                    SecondScreen(title: "FullScreen", color: .pink)
                }
                .sheet(isPresented: $showSheet) {
                    // 不要使用 if 逻辑！！！
                    SecondScreen(title: "Sheet", color: .red)
                }
            
            HStack {
                Button(action: {
                    showFullScreen.toggle()
                }, label: {
                    Text("全屏")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                })
                
                Button(action: {
                    showSheet.toggle()
                }, label: {
                    Text("Sheet")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(10))
                })
            }
        }
    }
}

struct SecondScreen: View {
    // 环境变量，sheet 展出的时候就是这个mode，然后点击按钮让这个模式消失
    @Environment(\.presentationMode) var presentationMode
    
    var title: String
    var color: Color
    
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack() {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding(20)
                    })
                    Spacer()
                }
                Spacer()
            }
            
            Text(title)
                .frame(width: 100, height: 50, alignment: .center)
                .background(Color.white.cornerRadius(30))
        }
    }
}

struct SheetFullScreenCoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetFullScreenCoverBootcamp()
    }
}
