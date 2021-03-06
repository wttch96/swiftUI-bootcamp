//
//  ListBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/20.
//

import SwiftUI

struct ListBootcamp: View {

    @State var fruits: [String] = [
        "θΉζπ", "ζ©ε­π", "ι¦θπ", "ζ‘ε­π"
    ]
    
    @State var veggies: [String] = [
        "εθ±π₯", "θ₯ΏηΊ’ζΏπ", "θ‘θεπ₯"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: HStack {
                    Text("ζ°΄ζ")
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
                    // θ‘θζ―ι’θ²
                    .listRowBackground(Color.gray)
                }
                
                Section(header: Text("θ¬θ")) {
                    ForEach(veggies, id: \.self) {veggies in
                        Text(veggies)
                    }
                }
            }
            // εθ‘¨ζ ·εΌ
            // .listStyle(InsetGroupedListStyle())
            .accentColor(.purple)
            .navigationTitle("ζθ΄§εθ‘¨")
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
        fruits.append("ζ°η§η±»")
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
