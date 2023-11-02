//
//  Living Room Window Content Shape.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/2/23.
//

import Foundation
import SwiftUI

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

struct View4: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: View4, rhs: View4) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Backyard")
                        .resizable()
                        .scaledToFill()
                        .opacity(0)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                let topOffset = h / 1.22
                                let leadingOffest = w / 2.6
                                let bottomOffset = h / 100
                                let trailingOffset = w / 10.5
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -380, y: 0)
                                
                                Image("Observable Hedges")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -380, y: 0)
                                
                                GridShape()
                                    .stroke(.black, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .opacity(0.6)
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -380, y: 0)
                                
                                HedgesShape()
                                    .stroke(.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .opacity(0.6)
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -380, y: 0)
                            }
                        }
                    }
            }
            Image("Grid")
                .scaleEffect(x: -1, y: 1)
                .offset(x: 0, y: -200)
        }
    }
}

struct View4_Previews: PreviewProvider {
    static var previews: some View {
        View4().equatable()
    }
}

