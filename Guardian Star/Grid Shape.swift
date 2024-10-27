//
//  Grid.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/1/23.
//

import SwiftUI

//Temporary objects to help setup the tappable areas for each button
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

//MARK: CUSTOM CONTENT SHAPE
struct CustomShapePreview: Shape {
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
    
        pencil.move(to: CGPoint(x: rect.minX + (rect.maxX / 7), y: rect.maxY))
        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.midY + (rect.maxX / 4)))
        pencil.closeSubpath()
    
        return pencil
    }
}

struct CustomContentShapePreview: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: CustomContentShapePreview, rhs: CustomContentShapePreview) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let locationImageName = "Backyard"
    let objectButtonImageName = "Ivy Vines"
    
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
                                
                                Image(objectButtonImageName)
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                
                                GridShape()
                                    .stroke(.secondary, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                
                                CustomShapePreview()
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

//MARK: PADDING FOR CONTENT SHAPE
struct ContentShapePaddingPreview: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: ContentShapePaddingPreview, rhs: ContentShapePaddingPreview) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    //Change values as needed
    let locationImageName = "Backyard"
    let objectButtonImageName = "Observable Bedroom Windows"
    let shapeTopOffset = 2.55
    let shapeLeadingOffset = 2.14
    let shapeBottomOffset = 3.1
    let shapeTrailingOffset = 4.0
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image(locationImageName)
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(x: -1, y: 1)
                        .opacity(0)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                let topOffset = h / shapeTopOffset
                                let leadingOffest = w / shapeLeadingOffset
                                let bottomOffset = h / shapeBottomOffset
                                let trailingOffset = w / shapeTrailingOffset
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                
                                Image(objectButtonImageName)
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                            }
                        }
                }
            }
        }
    }
}

struct ContentShapePreview_Previews: PreviewProvider {
    static var previews: some View {
        //Change depending on shape type
        ContentShapePaddingPreview().equatable()
    }
}
