//
//  Hedges.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HedgesView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: HedgesView, rhs: HedgesView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 1000)
                
                if GameplayController().currentMode == .observe {
                    Branch_ObservervableButton()
                    IvyVinesBase_ObservervableButton()
                } else if GameplayController().currentMode == .interact {
                    Branch_InteractableButton()
                } else if GameplayController().currentMode == .navigate {
                    ToLivingRoomWindow_NavigationalButton()
                }
            }
        }
    }
}

struct HedgesView_Previews: PreviewProvider {
    static var previews: some View {
        HedgesView().equatable()
    }
}
