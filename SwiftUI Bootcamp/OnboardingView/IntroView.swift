//
//  IntroView.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI

///
/// 综合实践
///
struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // 背景
            backgroundGradient
            
            // if user is signed in
            // profile view
            // else onboarding view
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
    
    var backgroundGradient: some View {
        let color1 = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        let color2 = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
        return RadialGradient(
            gradient: Gradient(colors: [color1, color2]),
            center: .topLeading,
            startRadius: 5,
            // 屏幕高度
            endRadius: UIScreen.main.bounds.height
        )
        .ignoresSafeArea()
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
