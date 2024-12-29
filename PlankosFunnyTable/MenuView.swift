//
//  MenuView.swift
//  PlankosFunnyTable
//
//  Created by Nicolae Chivriga on 29/12/2024.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var rootManager: RootManager
    var body: some View {
        VStack {
            Image("elmbi")
                
            
            
            
            VStack(spacing: 20) {
                navigationButton(changeView: .game, text: "PLAY")
                
                
                    navigationButton(changeView: .rules, text: "RULES")
                    Spacer()
                    navigationButton(changeView: .options, text: "SETTINGS")
                
                
            }
            
        }
    }
    
    func navigationButton(changeView: PresentedView, text: String) -> some View {
        Button {
            rootManager.changeView(changeView)
        } label: {
            ZStack {
                Image("rect")
                
                
                Text(text)
                    .font(.system(size: 30, weight: .heavy, design: .monospaced))
                    .foregroundColor(.black)
                
            }
        }
        
        
    }
}
