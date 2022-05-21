//
//  PickerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: Int = 2
    
    @State var selcetionOption: String = "最流行"
    
    let options: [String] = [
        "最流行",
        "最火🔥",
        "最新"
    ]
    
    init() {
        // 分段的默认颜色
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.systemPink
        // 多个属性来配置分段的各种UI选项
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                Picker(selection: $selcetionOption, label: Text("Picker"), content: {
                    ForEach(options.indices) {index in
                        Text(options[index]).tag(options[index])
                    }
                })
                .pickerStyle(SegmentedPickerStyle())
                
                
                Picker(
                    selection: $selcetionOption,
                    label:
                        HStack{
                            Text("你选择了：")
                            Text(selcetionOption)
                        }
                        .frame(width: 200, height: 100, alignment: .center)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal)
                        .background(.blue)
                        .cornerRadius(20)
                        .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
                    ,
                    content: {
                        ForEach(options, id: \.self) {option in
                            Text(option).tag(option)
                        }
                    }
                )
                .pickerStyle(MenuPickerStyle())
                
                
                HStack {
                    Text("年龄：")
                    Text("\(selection)")
                }
                
                Picker("请选择", selection: $selection, content: {
                    ForEach(18..<80) { index in
                        Text("\(index)")
                            .font(.headline)
                            .foregroundColor(.pink)
                            .tag(index)
                    }
                })
                // 滚轮
                .pickerStyle(WheelPickerStyle())
                // 菜单：点击弹窗选择
                // .pickerStyle(MenuPickerStyle())
            }
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
