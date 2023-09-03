//
//  Landing.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LandingView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: LandingView, rhs: LandingView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = LandingController().observableObjects
    let interactableObjects = LandingController().interactableObjects
    let navigationalObjects = LandingController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 1000)
                
                if currentMode == .observe {
                    RectangleBlock_ObservableButton()
                } else if currentMode == .interact {
                    RectangleBlock_InteractableButton()
                } else if currentMode == .navigate {
                    ToUpstairs_NavigationalButton()
                }
            }
        }
    }
}
