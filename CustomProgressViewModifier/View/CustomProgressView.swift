//
//  ProgressView.swift
//  HSS3
//
//  Created by Mika Urakawa on 2021/09/08.
//

import SwiftUI

struct CustomProgressView: ViewModifier {

    @Binding var showProgressView: Bool

    func body(content: Content) -> some View {
        // contentはこのカスタムViewModifierを使用する対象Viewプロキシ
        ZStack { content
            if showProgressView {
                // ProgressViewの背景をタップ不可にするために、Colorを使用
                Color.gray.opacity(0.2)

                VStack(spacing: 6) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                        .scaledToFit()
                        .frame(width: 22, height: 22)

                    Text("読み込み中")
                        .foregroundColor(Color.gray)
                        .font(.caption2)
                }
            }
        }
    }
}

struct CustomProgressView_Previews: PreviewProvider {
    @State static var showProgressView = true

    static var previews: some View {
        VStack(spacing: 50) {
            Text("テスト")
            Text("テスト")
        }
        .background(Color.yellow)
        .customProgressView(showProgressView: $showProgressView)
    }
}
