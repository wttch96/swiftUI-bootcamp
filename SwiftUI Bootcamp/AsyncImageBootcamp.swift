//
//  AsyncImageBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Wttch on 2022/5/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://pic3.zhimg.com/v2-4bba972a094eb1bdc8cbbc55e2bd4ddf_r.jpg?source=172ae18b)")
    
    let errorUrl = URL(string: "test")
    
    var body: some View {
        VStack {
            AsyncImage(url: url, content: {image in
                image.resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
            }, placeholder: {
                // 空白：即未加载
                ProgressView()
            })
            
            AsyncImage(url: errorUrl) { phase in
                switch phase {
                case .empty:
                    // 加载中
                    ProgressView()
                case .success(let image):
                    // 加载成功
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(12)
                case .failure(let error):
                    // 加载失败
                    Text("加载失败: \(error.localizedDescription)")
                        .font(.caption)
                        .foregroundColor(.white)
                        .frame(width: 100, height: 100, alignment: .center)
                        .background(.pink)
                        .cornerRadius(12)
                default:
                    Text("?")
                }
            }
        }
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
