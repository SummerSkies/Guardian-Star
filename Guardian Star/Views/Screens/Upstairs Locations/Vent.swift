//
//  Vent.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct VentView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: VentView, rhs: VentView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = VentController().observableObjects
    let interactableObjects = VentController().interactableObjects
    let navigationalObjects = VentController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 1000)
                
                if GameplayController.currentMode == .observe {
                    VentUpClose_ObservableButton()
                    ScreenedVentUpClose_ObservableButton()
                    OpenVentUpClose_ObservableButton()
                } else if GameplayController.currentMode == .interact {
                    VentUpClose_InteractableButton()
                    ScreenedVentUpClose_InteractableButton()
                    OpenVentUpClose_InteractableButton()
                } else if GameplayController.currentMode == .navigate {
                    ToDaisy_NavigationalButton()
                }
            }
        }
    }
}

struct VentView_Previews: PreviewProvider {
    static var previews: some View {
        VentView().equatable()
    }
}
