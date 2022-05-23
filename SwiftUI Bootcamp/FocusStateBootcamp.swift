//
//  FocusStateBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    @FocusState private var usernameInFocus: Bool
    
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(16)
            Button("TOGGLE FOCUS STATE") {
                usernameInFocus.toggle()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                usernameInFocus.toggle()
            })
        }
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
