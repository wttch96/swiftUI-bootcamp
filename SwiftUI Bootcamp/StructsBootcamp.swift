//
//  StructsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct User: Identifiable{
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct StructsBootcamp: View {
    
    
    @State var users: [User] = [
        User(displayName: "Wttch", userName: "wttch96", followerCount: 10, isVerified: true),
        User(displayName: "Nick", userName: "nick1", followerCount: 8, isVerified: false),
        User(displayName: "Emily", userName: "emily1", followerCount: 7, isVerified: false),
        User(displayName: "Chriss", userName: "chriss123", followerCount: 11, isVerified: true)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.id) {user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text("\(user.displayName)")
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                            
                        VStack {
                            Text("\(user.followerCount)")
                                .bold()
                            Text("Followers")
                                .bold()
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("结构体!")
        }
    }
}

struct StructsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StructsBootcamp()
    }
}
