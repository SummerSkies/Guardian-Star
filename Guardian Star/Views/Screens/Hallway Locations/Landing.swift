//
//  Landing.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LandingView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: LandingView, rhs: LandingView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = LandingController().observableObjects
    let interactableObjects = LandingController().interactableObjects
    let navigationalObjects = LandingController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 1000)
                
                if GameplayController().currentMode == .observe {
                    RectangleBlock_ObservableButton()
                } else if GameplayController().currentMode == .interact {
                    RectangleBlock_InteractableButton()
                } else if GameplayController().currentMode == .navigate {
                    ToUpstairs_NavigationalButton()
                }
            }
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().equatable()
    }
}
