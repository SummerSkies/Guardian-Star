//
//  Upstairs.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct UpstairsView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: UpstairsView, rhs: UpstairsView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = UpstairsController().observableObjects
    let interactableObjects = UpstairsController().interactableObjects
    let navigationalObjects = UpstairsController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Upstairs")
                    .resizable()
                    .scaledToFill()
                
                if currentMode == .observe {
                    DaisysDoor_ObservableButton()
                    ConsoleTable_ObservableButton()
                    Vent_ObservableButton()
                    ScreenedVent_ObservableButton()
                    OpenVent_ObservableButton()
                    TriangleBlock_ObservableButton()
                } else if currentMode == .interact {
                    ConsoleTable_InteractableButton()
                    TriangleBlock_InteractableButton()
                } else if currentMode == .navigate {
                    ToConsoleTable_NavigationalButton()
                }
            }
        }
    }
}
