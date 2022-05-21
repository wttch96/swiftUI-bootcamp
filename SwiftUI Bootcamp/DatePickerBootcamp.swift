//
//  DatePickerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/22.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var date: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(
        year: 2021
    )) ?? Date()
    
    let endingDate: Date =  Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日 HH时mm分ss秒"
        
        return formatter
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("你选择了：")
                    Text(dateFormatter.string(from: date))
                        .font(.caption)
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(16)
                
                DatePicker(
                    selection: $date,
                    // 时间范围
                    in: startingDate...endingDate
                ) {
                    Text("请选择日期📅")
                }
                .accentColor(.pink)
                // 图形选择
                // .datePickerStyle(GraphicalDatePickerStyle())
                // 滚轮选择
                // .datePickerStyle(WheelDatePickerStyle())
                .datePickerStyle(CompactDatePickerStyle())
            }
            .navigationTitle("时间选择器")
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
