//
//  File.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/12/23.
//

import SwiftUI

struct BackyardView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: BackyardView, rhs: BackyardView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var observableObjects = BackyardController().observableObjects
    var navigationalObjects = BackyardController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Backyard")
                    .resizable()
                    .scaledToFill()
                
                if GameplayController().currentMode == .observe {
                    BedroomWindows_ObservervableButton()
                    LivingRoomWindow_ObservervableButton()
                    IvyVines_ObservervableButton()
                    Hedges_ObservervableButton()
                } else if GameplayController().currentMode == .navigate {
                    ToHedges_NavigationalButton()
                }
            }
        }
    }
}

struct BackyardView_Previews: PreviewProvider {
    static var previews: some View {
        BackyardView().equatable()
    }
}
