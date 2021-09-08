//
//  ContentView.swift
//  CustomProgressViewModifier
//
//  Created by Mika Urakawa on 2021/09/08.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        
        VStack(spacing: 50) {
            Text("テスト1")
            Text("テスト2")
        }
        .background(Color.yellow)
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .customProgressView(showProgressView: $viewModel.showProgressView)
        .onAppear {
            viewModel.onAppear()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
