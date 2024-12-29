//
//  RulesView.swift
//  PlankosFunnyTable
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI

struct RulesView: View {
    @EnvironmentObject private var navigationManager: RootManager
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        navigationManager.changeView(.menu)
                    } label: {
                        BackButton()
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            Image("roles")
                
                    Text("""
The goal is to score as many points as possible by hitting the targets (suns) and scoring zones (100, 200). Use the flippers at the bottom to keep the ball in play. The game ends when the ball falls out of the playfield and no attempts remain.
""")
                    .font(.system(size: 15, weight: .semibold, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.horizontal, 70)
                
        }
    }
}
