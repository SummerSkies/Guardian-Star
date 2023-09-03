//
//  LowTable.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LowTableView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: LowTableView, rhs: LowTableView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = LowTableController().observableObjects
    let interactableObjects = LowTableController().interactableObjects
    let navigationalObjects = LowTableController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 1000)
            
                if currentMode == .observe {
                    Twine_ObservableButton()
                } else if currentMode == .interact {
                    Twine_InteractableButton()
                }
            }
        }
    }
}
