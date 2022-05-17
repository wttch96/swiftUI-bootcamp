//
//  InitializerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/17.
//

import SwiftUI

enum Fruit : String {
    case apple = "Apples"
    case orange = "Oranges"
}

extension Fruit {
    var color: Color {
        get {
            if(self == .apple) {
                return .pink
            } else {
                return .orange
            }
        }
    }
}

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        self.title = fruit.rawValue
        self.backgroundColor = fruit.color
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(15)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 10, fruit: .apple)
            InitializerBootcamp(count: 201, fruit: .orange)
        }
    }
}
