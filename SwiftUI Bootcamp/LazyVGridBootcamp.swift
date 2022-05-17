//
//  LazyVGrid.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/18.
//

import SwiftUI

struct LazyVGridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.pink)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                // 固定头部
                pinnedViews: [.sectionHeaders],
                content: {
                    ForEach(0..<5) {index in
                        Section(
                            header: Text("Section \(index + 1)")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(.blue)
                                .padding()
                        ) {
                            ForEach(0..<20) {index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                    }
                })
        }
    }
}

struct LazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridBootcamp()
    }
}
