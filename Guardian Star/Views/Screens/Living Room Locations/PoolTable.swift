//
//  PoolTable.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct PoolTableView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: PoolTableView, rhs: PoolTableView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = PoolTableController().observableObjects
    let interactableObjects = PoolTableController().interactableObjects
    let navigationalObjects = PoolTableController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.mint)
                    .frame(width: 1000)
                
                if currentMode == .observe {
                    PoolCue_ObservableButton()
                    PoolCueMoved_ObservableButton()
                    PoolBall_ObservableButton()
                    PoolBallMoved_ObservableButton()
                } else if currentMode == .interact {
                    PoolCue_InteractableButton()
                    PoolBall_InteractableButton()
                    PoolBallMoved_InteractableButton()
                }
            }
        }
    }
}
