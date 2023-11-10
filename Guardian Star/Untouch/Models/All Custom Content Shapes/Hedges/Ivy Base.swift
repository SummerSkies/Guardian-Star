//
//  Ivy Base.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/9/23.
//

import Foundation
import SwiftUI

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

struct View5: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: View5, rhs: View5) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Hedges Location")
                        .resizable()
                        .scaledToFill()
                        .opacity(0.6)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                let topOffset = h / 300
                                let leadingOffest = w / 30
                                let bottomOffset = h / 7
                                let trailingOffset = w / 300
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -500, y: 0)
                                
                                Image("Observable Ivy Vines Base")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -500, y: 0)
                                
                                GridShape()
                                    .stroke(.black, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .opacity(0.6)
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -500, y: 0)
                                
                                IvyBaseShape()
                                    .stroke(.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .opacity(0.6)
                                    .scaleEffect(x: -1, y: 1)
                                    //.offset(x: -500, y: 0)
                            }
                        }
                    }
            }
            Image("Grid")
                .scaleEffect(x: -1, y: 1)
                .offset(x: 0, y: 240)
        }
    }
}

struct View5_Previews: PreviewProvider {
    static var previews: some View {
        View5().equatable()
    }
}

