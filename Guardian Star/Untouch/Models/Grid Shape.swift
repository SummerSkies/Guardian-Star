//
//  Grid.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/1/23.
//

import Foundation
import SwiftUI

struct GridShape: Shape {
    func path(in rect: CGRect) -> Path {
            var pencil = Path()
        pencil.move(to: CGPoint(x: rect.minX, y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        pencil.move(to: CGPoint(x: rect.midX, y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        pencil.move(to: CGPoint(x: rect.maxX, y: rect.midY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        pencil.closeSubpath()
    
            return pencil
        }
}
