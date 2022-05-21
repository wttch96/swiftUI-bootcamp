//
//  AlertBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/21.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroudColor: Color = .white
    
    @State var alertType: MyAlerts = .success
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroudColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: alert(type: .success), label: {
                    Text("成功弹窗")
                })
                Button(action: alert(type: .error), label: {
                    Text("错误弹窗")
                })
            }
            .alert(isPresented: $showAlert, content: getAlertView)
        }
    }
    
    func getAlertView() -> Alert {
        switch alertType {
            case .success:
                return Alert(
                    title: Text("警告⚠️"),
                    message: Text("这是警告消息, 换个颜色？"),
                    primaryButton: .destructive(Text("橘色"), action: {
                        backgroudColor = .orange
                    }),
                    secondaryButton: .cancel(Text("红色"), action: {
                        backgroudColor = .red
                    })
                )
            case .error:
                return Alert(title: Text("失败了！"))
        }
//        Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("好的")))
        
    }
    
    func alert(type: MyAlerts) -> (() -> Void) {
        return {
            alertType = type
            showAlert.toggle()
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
