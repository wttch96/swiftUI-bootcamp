//
//  ProfileView.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Double?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(Int(currentUserAge ?? 0)) years old!")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    withAnimation(.spring()) {
                        currentUserSignedIn = false
                    }
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .cornerRadius(10)
        .background(.white)
        .shadow(radius: 10)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
