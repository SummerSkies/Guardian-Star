//
//  LivingRoom.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct LivingRoomView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: LivingRoomView, rhs: LivingRoomView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = LivingRoomController().observableObjects
    let interactableObjects = LivingRoomController().interactableObjects
    let navigationalObjects = LivingRoomController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Living Room")
                    .resizable()
                    .scaledToFill()
                
                if GameplayController().currentMode == .observe {
                    HallwayDoor_ObservableButton()
                    Chair_ObservableButton()
                    MovedChair_ObservableButton()
                    LowTable_ObservableButton()
                    PoolTable_ObservableButton()
                } else if GameplayController().currentMode == .interact {
                    Chair_InteractableButton()
                } else if GameplayController().currentMode == .navigate {
                    ToPoolTable_NavigationalButton()
                    ToLowTable_NavigationalButton()
                    ToHallwayDoorGap_NavigationalButton()
                    ToHallwayDoorHandle_NavigationalButton()
                    ToHallway_NavigationalButton()
                }
            }
        }
    }
}

struct LivingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        LivingRoomView().equatable()
    }
}
