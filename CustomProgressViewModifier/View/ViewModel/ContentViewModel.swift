//
//  ContentViewModel.swift
//  CustomProgressViewModifier
//
//  Created by Mika Urakawa on 2021/09/08.
//

import Foundation

class ContentViewModel: ObservableObject {
    
    @Published var showProgressView = false
    
    func onAppear() {
        showProgressView = true
        
        // 3秒後待ってインジケータを削除（実際はAPI通信したり、画像取得したり）
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.showProgressView = false
        }
    }
}
