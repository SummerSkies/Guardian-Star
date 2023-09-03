//
//  File.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/12/23.
//

import SwiftUI

struct BackyardView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: BackyardView, rhs: BackyardView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var observableObjects = BackyardController().observableObjects
    var navigationalObjects = BackyardController().navigationalObjects
    var controlPoint = 0.0
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Backyard")
                    .resizable()
                    .scaledToFill()
                Image("Bedroom Windows")
                Image("Living Room Window")
                Image("Ivy Vines")
                Image("Hedges")
                
                if currentMode == .observe {
                    BedroomWindows_ObservableButton()
                    LivingRoomWindow_ObservableButton()
                    IvyVines_ObservableButton()
                    Hedges_ObservableButton()
                } else if currentMode == .navigate {
                    ToHedges_NavigationalButton()
                }
            }
        }
    }
}
