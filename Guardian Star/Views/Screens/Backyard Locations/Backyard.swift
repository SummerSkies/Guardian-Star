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
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Backyard")
                    .resizable()
                    .scaledToFill()
                
                if currentMode == .observe {
                    BedroomWindows_ObservervableButton()
                    LivingRoomWindow_ObservervableButton()
                    IvyVines_ObservervableButton()
                    Hedges_ObservervableButton()
                } else if currentMode == .navigate {
                    ToHedges_NavigationalButton()
                }
            }
        }
    }
}
