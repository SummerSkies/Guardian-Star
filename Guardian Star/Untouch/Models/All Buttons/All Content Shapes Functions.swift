//
//  Buttons.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/31/23.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder func contentShape(_ tappableArea: TappableArea) -> some View {
        switch tappableArea {
        case .rectangle:
            self.contentShape(
                RectangleShape()
            )
            
    //MARK: BACKYARD
        case .ivyVines:
            self.contentShape(
                IvyVinesShape()
            )
        case .hedges:
            self.contentShape(
                HedgesShape()
            )
            
    //MARK: HEDGES
        case .branch:
            self.contentShape(
                BranchShape()
            )
        case .ivyBase:
            self.contentShape(
                IvyBaseShape()
            )
        }
    }
}
