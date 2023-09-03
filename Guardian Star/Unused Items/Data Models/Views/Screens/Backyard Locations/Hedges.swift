//
//  Hedges.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HedgesView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: HedgesView, rhs: HedgesView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 1000)
                
                if currentMode == .observe {
                    Branch_ObservableButton()
                    IvyVinesBase_ObservableButton()
                } else if currentMode == .interact {
                    Branch_InteractableButton()
                } else if currentMode == .navigate {
                    ToLivingRoomWindow_NavigationalButton()
                }
            }
        }
    }
}
