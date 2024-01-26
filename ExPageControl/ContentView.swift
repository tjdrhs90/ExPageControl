//
//  ContentView.swift
//  ExPageControl
//
//  Created by ssg on 1/26/24.
//

import SwiftUI

struct ContentView: View {
    
    let array: [Color] = [.red, .green, .blue]
    
    @State var selection = 0
    
    var body: some View {
        
        VStack {
            TabView(selection: $selection) {
                ForEach(array.indices, id: \.self) {
                    array[$0]
                        .tag($0)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: 300, height: 300)
            
            PageControl(numberOfPages: array.count, currentPage: $selection)
        }
    }
}

#Preview {
    ContentView()
}
