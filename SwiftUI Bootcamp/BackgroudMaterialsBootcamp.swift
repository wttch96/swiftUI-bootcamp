//
//  BackgroudMaterials.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI

///
/// 背景模糊?
///
struct BackgroudMaterialsBootcamp: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                VStack {
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 30, height: 4, alignment: .center)
                        .padding()
                    Spacer()
                }
                .frame(height: 350)
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(30)
            }
            .ignoresSafeArea()
            .background(
                Image("bg1")
            )
        }
    }
}

struct BackgroudMaterials_Previews: PreviewProvider {
    static var previews: some View {
        BackgroudMaterialsBootcamp()
    }
}
