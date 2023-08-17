//
//  HallwayDoorknob.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct HallwayDoorknobView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: HallwayDoorknobView, rhs: HallwayDoorknobView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = HallwayDoorknobController().observableObjects
    let interactableObjects = HallwayDoorknobController().interactableObjects
    let navigationalObjects = HallwayDoorknobController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.orange)
                    .frame(width: 1000)
            
                if GameplayController.currentMode == .observe {
                    Lock_ObservableButton()
                } else if GameplayController.currentMode == .interact {
                    Lock_InteractableButton()
                }
            }
        }
    }
}

struct HallwayDoorknobView_Previews: PreviewProvider {
    static var previews: some View {
        HallwayDoorknobView().equatable()
    }
}
