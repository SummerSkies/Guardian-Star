//
//  Hallway.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct HallwayView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: HallwayView, rhs: HallwayView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = HallwayController().observableObjects
    let interactableObjects = HallwayController().interactableObjects
    let navigationalObjects = HallwayController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Hallway")
                    .resizable()
                    .scaledToFill()
                
                if currentMode == .observe {
                    Doors_ObservableButton()
                    Stairs_ObservableButton()
                    ArchBlock_ObservableButton()
                } else if currentMode == .interact {
                    ArchBlock_InteractableButton()
                } else if currentMode == .navigate {
                    ToLanding_NavigationalButton()
                }
            }
        }
    }
}
