//
//  OnboardingView.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI


struct OnboardingView: View {
    
    /*
     - 0. welcome
     - 1. addName
     - 2. addAge
     - 3. addGender
     */
    @State var onboardingState: Int = 0
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Double?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    Text("Error! Onboarding state value.")
                        .foregroundColor(.red)
                }
            }
            
            VStack {
                Spacer()
                // buttons
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text(alertTitle))
        })
    }
}

// MARK: COMPONENTS
extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" :
                (onboardingState == 3 ? "FINISH" : "Next"))
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .onTapGesture(perform: handleNextButtonPressed)
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the#1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    

    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1.0)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Menu(
                gender.count > 1 ? gender : "Select a gender") {
                Picker(selection: $gender, content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }, label: {
                    Text("Select a gender:")
                       
                })
            }
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: FUNCTIONS
extension OnboardingView {
    
    func handleNextButtonPressed() {
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert("Your name must be at least 3 characters long!")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert("Please select a gender before moving forward!")
                return
            }
        default:
            break
        }
        
        // GOTO NEXT SECTION
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    private func signIn() {
        withAnimation(.spring()) {
            currentUserName = name
            currentUserAge = age
            currentUserGender = gender
            currentUserSignedIn = true
        }
    }
    
    private func showAlert(_ title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(.purple)
    }
}
