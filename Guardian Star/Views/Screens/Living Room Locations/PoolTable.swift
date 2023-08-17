//
//  PoolTable.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct PoolTableView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: PoolTableView, rhs: PoolTableView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = PoolTableController().observableObjects
    let interactableObjects = PoolTableController().interactableObjects
    let navigationalObjects = PoolTableController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.mint)
                    .frame(width: 1000)
                
                if GameplayController.currentMode == .observe {
                    PoolCue_ObservableButton()
                    PoolCueMoved_ObservableButton()
                    PoolBall_ObservableButton()
                    PoolBallMoved_ObservableButton()
                } else if GameplayController.currentMode == .interact {
                    PoolCue_InteractableButton()
                    PoolBall_InteractableButton()
                    PoolBallMoved_InteractableButton()
                }
            }
        }
    }
}

struct PoolTableView_Previews: PreviewProvider {
    static var previews: some View {
        PoolTableView().equatable()
    }
}
