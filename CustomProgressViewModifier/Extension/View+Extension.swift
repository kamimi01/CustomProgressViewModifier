//
//  View+Extension.swift
//  CustomProgressViewModifier
//
//  Created by Mika Urakawa on 2021/09/08.
//

import SwiftUI

extension View {
    func customProgressView(showProgressView: Binding<Bool>) -> some View {
        self.modifier(CustomProgressView(showProgressView: showProgressView))
    }
}
