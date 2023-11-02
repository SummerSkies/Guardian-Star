//
//  RectangleShape.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/2/23.
//

import Foundation
import SwiftUI

struct RectangleShape: Shape {
    func path(in rect: CGRect) -> Path {
            var pencil = Path()
        pencil.move(to: CGPoint(x: rect.minX, y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        pencil.closeSubpath()
    
            return pencil
        }
}
