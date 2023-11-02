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

struct IvyView: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: IvyView, rhs: IvyView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Backyard")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(x: -1, y: 1)
                        .opacity(0)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                let topOffset = h / 1.8
                                let leadingOffest = w / 1.42
                                let bottomOffset = h / 16
                                let trailingOffset = w / 8.7
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                
                                Image("Ivy Vines")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                
                                GridShape()
                                    .stroke(.secondary, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                
                                IvyVinesShape()
                                    .stroke(.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                    .opacity(0.6)
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

struct IvyView_Previews: PreviewProvider {
    static var previews: some View {
        IvyView().equatable()
    }
}
