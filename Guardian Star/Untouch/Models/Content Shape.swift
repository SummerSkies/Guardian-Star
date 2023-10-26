//
//  temp.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/28/23.
//

import CoreGraphics
import SwiftUI

struct IvyVinesShape: Shape {
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
        
        pencil.move(to: CGPoint(x: 461, y: 335))
        pencil.addLine(to: CGPoint(x: 450, y: 280))
        pencil.addLine(to: CGPoint(x: 475, y: 230))
        pencil.addLine(to: CGPoint(x: 463, y: 200))
        pencil.addLine(to: CGPoint(x: 470, y: 194))
        pencil.addLine(to: CGPoint(x: 490, y: 200))
        pencil.addLine(to: CGPoint(x: 490, y: 280))
        pencil.addLine(to: CGPoint(x: 530, y: 270))
        pencil.addLine(to: CGPoint(x: 540, y: 300))
        pencil.closeSubpath()
        
        return pencil
    }
}
