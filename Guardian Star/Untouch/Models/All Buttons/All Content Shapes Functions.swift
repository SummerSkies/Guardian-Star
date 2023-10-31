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
        case let .rectangle(offset, size):
            self.contentShape(
                Rectangle()
                    .offset(x: offset.x, y: offset.y)
                    .size(width: size.width, height: size.height)
            )
            
    //MARK: BACKYARD
        case let .custom(offset, scale):
            self.contentShape(
                IvyVinesShape()
                    .offset(x: offset.x, y: offset.y)
                    .scale(scale)
            )
        }
    }
}
