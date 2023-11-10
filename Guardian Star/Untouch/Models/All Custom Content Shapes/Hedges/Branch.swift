//
//  Branch.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/9/23.
//

import Foundation
import SwiftUI

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

struct View6: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: View6, rhs: View6) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Hedges Location")
                        .resizable()
                        .scaledToFill()
                        .opacity(0)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                let topOffset = h / 1.64
                                let leadingOffest = w / 4.5
                                let bottomOffset = h / 40
                                let trailingOffset = w / 1.83
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    //.scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                                
                                Image("Observable Branch")
                                    .resizable()
                                    .scaledToFill()
                                    //.scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                                
                                GridShape()
                                    .stroke(.black, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .opacity(0.6)
                                    //.scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                                
                                BranchShape()
                                    .stroke(.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .opacity(0.6)
                                    //.scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                            }
                        }
                    }
            }
            Image("Grid")
                //.scaleEffect(x: -1, y: 1)
                .offset(x: 0, y: -240)
        }
    }
}

struct View6_Previews: PreviewProvider {
    static var previews: some View {
        View6().equatable()
    }
}
