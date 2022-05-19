//
//  PopoverBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/20.
//

import SwiftUI

//
// sheets
// animations
// transitions
//
struct PopoverBootcamp: View {
    
    @State var showSheet: Bool = false
    
    @State var showTransaction: Bool = false
    
    @State var offset = UIScreen.main.bounds.height
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button("Sheet") {
                        showSheet.toggle()
                    }
                    Button("变换") {
                        withAnimation(.spring()) {
                            showTransaction.toggle()
                        }
                    }
                    Button("动画") {
                        withAnimation(.spring()) {
                            offset = offset == 0 ? UIScreen.main.bounds.height : 0
                        }
                    }
                }
                .font(.largeTitle)
                
                Spacer()
            }
            .sheet(isPresented: $showSheet) {
                NewScreen()
            }
            
            ZStack {
                if showTransaction {
                    NewScreen()
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                }
            }
            .zIndex(2.0)
        
            NewScreen()
                .padding(.top, 100)
                .offset(y: offset)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
            })
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
