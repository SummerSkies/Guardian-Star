//
//  Tappable Area.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 10/24/23.
//

import Foundation

enum TappableArea {
    case rectangle(offset: CGPoint, size: CGSize)
    case custom(offset: CGPoint, scale: CGFloat)
}
