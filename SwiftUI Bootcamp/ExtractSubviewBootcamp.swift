//
//  ExtractSubviewBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/18.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    let backgroudColor = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    
    var body: some View {
        ZStack {
            backgroudColor.edgesIgnoringSafeArea(.all)
            
            HStack {
                MyItem(title: "Apples", count: 1, color: .red)
                MyItem(title: "Oranges", count: 12, color: .orange)
                MyItem(title: "Bananas", count: 88, color: .yellow)
            }
          
        }
    }

}

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}

struct MyItem: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }.padding()
            .background(color)
            .cornerRadius(10)
    }
}
