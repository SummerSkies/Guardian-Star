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
                Rectangle()
            )
            
    //MARK: BACKYARD
        case .custom:
            self.contentShape(
                IvyVinesShape()
            )
        }
    }
}
