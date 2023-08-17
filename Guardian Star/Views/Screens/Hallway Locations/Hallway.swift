//
//  Hallway.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct HallwayView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: HallwayView, rhs: HallwayView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = HallwayController().observableObjects
    let interactableObjects = HallwayController().interactableObjects
    let navigationalObjects = HallwayController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Hallway")
                    .resizable()
                    .scaledToFill()
                
                if GameplayController.currentMode == .observe {
                    Doors_ObservableButton()
                    Stairs_ObservableButton()
                    ArchBlock_ObservableButton()
                } else if GameplayController.currentMode == .interact {
                    ArchBlock_InteractableButton()
                } else if GameplayController.currentMode == .navigate {
                    ToLanding_NavigationalButton()
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct HallwayView_Previews: PreviewProvider {
    static var previews: some View {
        HallwayView().equatable()
    }
}
