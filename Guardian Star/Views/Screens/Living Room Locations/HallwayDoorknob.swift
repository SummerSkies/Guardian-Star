//
//  HallwayDoorknob.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HallwayDoorknobView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: HallwayDoorknobView, rhs: HallwayDoorknobView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = HallwayDoorknobController().observableObjects
    let interactableObjects = HallwayDoorknobController().interactableObjects
    let navigationalObjects = HallwayDoorknobController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(width: 1000)
            
                if currentMode == .observe {
                    Lock_ObservableButton()
                } else if currentMode == .interact {
                    Lock_InteractableButton()
                }
            }
        }
    }
}
