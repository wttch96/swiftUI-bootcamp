//
//  ObservableObject.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    // @Published 数据更改的时候可以通知到
    @Published var fruitArray: [FruitModel] = [
        FruitModel(name: "Apples", count: 10)
    ]
    
    @Published var isLoading = false
    
    init() {
        getFruits()
    }
    
    
    func getFruits() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let fruit1 = FruitModel(name: "Oranges", count: 1)
            let fruit2 = FruitModel(name: "Bananas", count: 2)
            let fruit3 = FruitModel(name: "Watermelon", count: 33)
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ObservableObjectBootcamp: View {
    
    // 类似 @State 加 @ObservedObject, 页面更新不会更新底层数据
    // 标记为@StateObject属性包装器的观察对象不会在包含视图结构时被重新绘制时被销毁和重新定位。
    // 如果需要将数据传入第二个试图或者子视图，使用@ObservedObject
    // 比如：某个页面的状态改变导致页面刷新，使用 @ObservedObject 的视图就会进行重新绘制
    // 使用 @StateObject 的视图就不会
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Fruit List")
            .navigationBarItems(
                leading: NavigationLink(destination: PageRandomView(), label: {
                    Image(systemName: "arrow.left").font(.title)
                }),
                trailing: NavigationLink(destination: RandomView(fruitViewModel: fruitViewModel),
                                         label: { Image(systemName: "arrow.right").font(.title)}))
        }
    }
}

struct PageRandomView: View {
    @State var count = 0
    
    var body: some View {
        VStack {
            Text("随机数:\(count)")
            Button("随机数") {
                count = (0..<1000).randomElement()!
            }
            // count 的更新会导致 RandomValueView 里的数据重绘
            // @ObservedObject 会让数据更新
            // @StateObject 会保存状态，不重制页面数据
            RandomValueView()
        }
    }
}

class RandomValue: ObservableObject {
    @Published var count: Int = 0
}

struct RandomValueView: View {
    @StateObject var randomValue: RandomValue = RandomValue()
    
    var body: some View {
        VStack {
            Text("\(randomValue.count)")
            Button("增加") {
                randomValue.count += 1
            }
        }
    }
}

struct RandomView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            VStack {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            
//            Button(action: {
//                presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Text("GO BACK")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            })
        }
    }
}

struct ObservableObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectBootcamp()
    }
}
