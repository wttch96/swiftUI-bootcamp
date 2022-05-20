//
//  ListBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/20.
//

import SwiftUI

struct ListBootcamp: View {

    @State var fruits: [String] = [
        "苹果🍎", "橘子🍊", "香蕉🍌", "桃子🍑"
    ]
    
    @State var veggies: [String] = [
        "土豆🥔", "西红柿🍅", "胡萝卜🥕"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HStack {
                    Text("水果")
                    Image(systemName: "flame.fill")
                }.foregroundColor(.orange)) {
                    ForEach(fruits, id: \.self) {fruit in
                        Text(fruit)
                            .font(.caption)
                            .foregroundColor(.pink)
                            .frame(maxWidth: .infinity)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    // 行背景颜色
                    .listRowBackground(Color.gray)
                }
                
                Section(header: Text("蔬菜")) {
                    ForEach(veggies, id: \.self) {veggies in
                        Text(veggies)
                    }
                }
            }
            // 列表样式
            // .listStyle(InsetGroupedListStyle())
            .accentColor(.purple)
            .navigationTitle("杂货列表")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
            .navigationBarTitleDisplayMode(.inline)
        }
        .accentColor(.pink)
    }
    
    var addButton: some View {
        Button(action: add, label: {
            Image(systemName: "plus")
        })
    }
    
    func add() {
        fruits.append("新种类")
    }
    
    func delete(indexSet: IndexSet) {
            fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
