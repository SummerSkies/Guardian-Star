//
//  HallwayDoorGap.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HallwayDoorGapView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: HallwayDoorGapView, rhs: HallwayDoorGapView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = HallwayDoorGapController().observableObjects
    let interactableObjects = HallwayDoorGapController().interactableObjects
    let navigationalObjects = HallwayDoorGapController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width: 1000)
            
                if GameplayController().currentMode == .observe {
                    DoorGap_ObservableButton()
                    Key_ObservableButton()
                } else if GameplayController().currentMode == .interact {
                    Key_InteractableButton()
                }
            }
        }
    }
}

struct HallwayDoorGapView_Previews: PreviewProvider {
    static var previews: some View {
        HallwayDoorGapView().equatable()
    }
}
