//
//  Upstairs.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct UpstairsView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: UpstairsView, rhs: UpstairsView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = UpstairsController().observableObjects
    let interactableObjects = UpstairsController().interactableObjects
    let navigationalObjects = UpstairsController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Upstairs")
                    .resizable()
                    .scaledToFill()
                
                
                
                if GameplayController.currentMode == .observe {
                    DaisysDoor_ObservableButton()
                    ConsoleTable_ObservableButton()
                    Vent_ObservableButton()
                    ScreenedVent_ObservableButton()
                    OpenVent_ObservableButton()
                    TriangleBlock_ObservableButton()
                } else if GameplayController.currentMode == .interact {
                    ConsoleTable_InteractableButton()
                    TriangleBlock_InteractableButton()
                } else if GameplayController.currentMode == .navigate {
                    ToConsoleTable_NavigationalButton()
                }
            }
        }
    }
}

struct UpstairsView_Previews: PreviewProvider {
    static var previews: some View {
        UpstairsView().equatable()
    }
}
