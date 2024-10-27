//
//  Buttons.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/31/23.
//

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

struct IvyVinesShape: Shape {
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
    
        pencil.move(to: CGPoint(x: rect.minX + (rect.maxX / 7), y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.midY + (rect.maxX / 4)))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxX / 5), y: rect.minY + (rect.maxX / 3)))
        pencil.addLine(to: CGPoint(x: rect.minX + (rect.maxX / 8), y: rect.minY + (rect.maxX / 7)))
        pencil.addLine(to: CGPoint(x: rect.minX + (rect.maxX / 4.7), y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.minY + (rect.maxX / 8)))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.midY + (rect.maxX / 5)))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.midY + (rect.maxX / 8)))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.midY + (rect.maxX / 2)))
        pencil.closeSubpath()
    
        return pencil
    }
}

struct HedgesShape: Shape {
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
    
        pencil.move(to: CGPoint(x: rect.minX, y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.minX + (rect.maxX / 6), y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.minX + (rect.maxX / 4), y: rect.midY - (rect.maxX / 30)))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxX / 6), y: rect.midY - (rect.maxX / 30)))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxX / 10), y: rect.minY + (rect.maxX / 24)))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.minY + (rect.maxX / 24)))
        pencil.addLine(to: CGPoint(x: rect.midX + (rect.maxX / 30), y: rect.midY - (rect.maxX / 20)))
        pencil.addLine(to: CGPoint(x: rect.midX + (rect.maxX / 5), y: rect.midY - (rect.maxX / 20)))
        pencil.addLine(to: CGPoint(x: rect.midX + (rect.maxX / 3.5), y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.maxX - (rect.maxX / 10), y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.midY - (rect.maxX / 30)))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        pencil.closeSubpath()
    
        return pencil
    }
}

struct BranchShape: Shape {
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
    
        pencil.move(to: CGPoint(x: rect.minX, y: rect.maxY - (rect.maxY / 8)))
        pencil.addLine(to: CGPoint(x: rect.minX + (rect.maxY / 5), y: rect.maxY - (rect.maxY / 8)))
        pencil.addLine(to: CGPoint(x: rect.minX + (rect.maxY / 4), y: rect.maxY - (rect.maxY / 4.5)))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxY / 14), y: rect.maxY - (rect.maxY / 5)))
        pencil.addLine(to: CGPoint(x: rect.midX + (rect.maxY / 3), y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.midX + (rect.maxY / 2.2), y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - (rect.maxY / 3.5)))
        pencil.addLine(to: CGPoint(x: rect.maxX - (rect.maxY / 9), y: rect.maxY - (rect.maxY / 2.7)))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.midY - (rect.maxY / 7)))
        pencil.addLine(to: CGPoint(x: rect.midX + (rect.maxY / 20), y: rect.midY - (rect.maxY / 2.8)))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxY / 12), y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxY / 3), y: rect.minY + (rect.maxY / 4)))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxY / 3), y: rect.midY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        pencil.closeSubpath()
    
        return pencil
    }
}

struct IvyBaseShape: Shape {
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
    
        pencil.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - (rect.maxX / 6)))
        pencil.addLine(to: CGPoint(x: rect.maxX - (rect.maxX / 8), y: rect.maxY - (rect.maxX / 11)))
        pencil.addLine(to: CGPoint(x: rect.maxX - (rect.maxX / 4), y: rect.maxY - (rect.maxX / 5.5)))
        pencil.addLine(to: CGPoint(x: rect.midX + (rect.maxX / 6), y: rect.maxY - (rect.maxY / 6)))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.maxY - (rect.maxY / 6)))
        pencil.addLine(to: CGPoint(x: rect.midX - (rect.maxX / 9), y: rect.midY))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.midY - (rect.maxY / 4)))
        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        pencil.closeSubpath()
    
        return pencil
    }
}
