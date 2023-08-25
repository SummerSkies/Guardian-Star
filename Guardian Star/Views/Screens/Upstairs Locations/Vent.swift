//
//  Vent.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct VentView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: VentView, rhs: VentView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = VentController().observableObjects
    let interactableObjects = VentController().interactableObjects
    let navigationalObjects = VentController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 1000)
                
                if currentMode == .observe {
                    VentUpClose_ObservableButton()
                    ScreenedVentUpClose_ObservableButton()
                    OpenVentUpClose_ObservableButton()
                } else if currentMode == .interact {
                    VentUpClose_InteractableButton()
                    ScreenedVentUpClose_InteractableButton()
                    OpenVentUpClose_InteractableButton()
                } else if currentMode == .navigate {
                    ToDaisy_NavigationalButton()
                }
            }
        }
    }
}
