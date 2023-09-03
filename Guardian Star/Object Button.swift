//
//  Buttons.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/31/23.
//

import Foundation
import SwiftUI

struct ObservableObjectButton {
    let tappableArea: TappableArea
    let imageName: String
    let emoteName: String
    let message: String
}

struct Location {
    let backgroundImageName: String
    let observeableObjects: [ObservableObjectButton]
    let defaultImageNames: [String]
}

enum LocationName {
    case backyard
}

enum TappableArea {
    case rectangle(offset: CGPoint, size: CGSize)
    case custom(offset: CGPoint, scale: CGFloat)
}

extension View {
    @ViewBuilder func contentShape(_ tappableArea: TappableArea) -> some View {
        switch tappableArea {
        case let .rectangle(offset, size):
            self.contentShape(
                Rectangle()
                    .offset(x: offset.x, y: offset.y)
                    .size(width: size.width, height: size.height)
            )
        case let .custom(offset, scale):
            self.contentShape(
                IvyVinesShape()
                    .offset(x: offset.x, y: offset.y)
                    .scale(scale)
            )
        }
    }
}
