//
//  HallwayDoorGap.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HallwayDoorGapView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: HallwayDoorGapView, rhs: HallwayDoorGapView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = HallwayDoorGapController().observableObjects
    let interactableObjects = HallwayDoorGapController().interactableObjects
    let navigationalObjects = HallwayDoorGapController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width: 1000)
            
                if currentMode == .observe {
                    DoorGap_ObservableButton()
                    Key_ObservableButton()
                } else if currentMode == .interact {
                    Key_InteractableButton()
                }
            }
        }
    }
}
