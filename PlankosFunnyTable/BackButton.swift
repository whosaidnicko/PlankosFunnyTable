//
//  BackButton.swift
//  SweetCandyBlast
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI


struct BackButton: View {
    @EnvironmentObject private var rootManager: RootManager
    var body: some View {
        Image("bs")
            .resizable()
            .frame(width: 36, height: 30)
            .onTapGesture {
                rootManager.changeView(.menu)
            }
    }
}
