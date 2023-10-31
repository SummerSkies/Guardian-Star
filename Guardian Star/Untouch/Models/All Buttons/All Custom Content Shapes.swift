//
//  temp.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/28/23.
//

import CoreGraphics
import SwiftUI

import SwiftUI

struct BackyardGrid: View {
    var body: some View {
        ZStack {
            Image("Grid")
                .resizable()
                .scaledToFill()
            
            Rectangle()
                .fill(.white)
                .padding(.init(top: 50, leading: 110, bottom: 0, trailing: 0))
            
            Image("Grid")
                .resizable()
                .padding(.init(top: -180, leading: -260, bottom: -20, trailing: -65))
                .opacity(0.25)
        }
    }
}

struct StreamLogo2: Shape {
    
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

struct StreamLogo: Shape {
    
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
    
        pencil.move(to: CGPoint(x: rect.minX + 461, y: rect.minY + 335))
        pencil.addLine(to: CGPoint(x: rect.minX + 450, y: rect.minY + 280))
        pencil.addLine(to: CGPoint(x: rect.minX + 475, y: rect.minY + 230))
        pencil.addLine(to: CGPoint(x: rect.minX + 463, y: rect.minY + 200))
        pencil.addLine(to: CGPoint(x: rect.minX + 470, y: rect.minY + 194))
        pencil.addLine(to: CGPoint(x: rect.minX + 490, y: rect.minY + 200))
        pencil.addLine(to: CGPoint(x: rect.minX + 530, y: rect.minY + 270))
        pencil.addLine(to: CGPoint(x: rect.minX + 540, y: rect.minY + 300))
        pencil.closeSubpath()
    
        return pencil
    }
}

//struct StreamLogo: Shape {
//    
//    func path(in rect: CGRect) -> Path {
//        var pencil = Path()
//        
//        // INSTRUCTIONS
//        // 1. Move to an origin
//        pencil.move(to: CGPoint(x: rect.minX, y: rect.minY))
//        pencil.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
//        // 2. Move horizontally downward
//        pencil.addLine(to: CGPoint(x: rect.midX - 20, y: rect.minY + 8))
//        // 3.Move upward at an angle towards midX
//        pencil.addLine(to: CGPoint(x: rect.midX, y: rect.minY - 15))
//        // 4. Opposite of the previous line
//        pencil.addLine(to: CGPoint(x: rect.midX + 20, y: rect.minY + 8))
//        // 5. Opposite of the first line
//        pencil.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
//        // 6. Move downwards
//        pencil.addLine(to: CGPoint(x: rect.maxX - 40, y: rect.maxY))
//        // 7. Move horizontally
//        pencil.addLine(to: CGPoint(x: rect.minX + 40, y: rect.maxY))
//        // 8. Close the path
//        // Option 1
//        //path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
//        // Option 2
//        pencil.closeSubpath()
//        
//        return pencil
//    }
//}


//    //0,0
//    func path(in rect: CGRect) -> Path {
//        var pencil = Path()
//
//        pencil.move(to: CGPoint(x: 461, y: 335))
//        pencil.addLine(to: CGPoint(x: 450, y: 280))
//        pencil.addLine(to: CGPoint(x: 475, y: 230))
//        pencil.addLine(to: CGPoint(x: 463, y: 200))
//        pencil.addLine(to: CGPoint(x: 470, y: 194))
//        pencil.addLine(to: CGPoint(x: 490, y: 200))
//        pencil.addLine(to: CGPoint(x: 490, y: 280))
//        pencil.addLine(to: CGPoint(x: 530, y: 270))
//        pencil.addLine(to: CGPoint(x: 540, y: 300))
//        pencil.closeSubpath()
//
//        return pencil
//    }

//func path(in rect: CGRect) -> Path {
//    var pencil = Path()
//
//    pencil.move(to: CGPoint(x: rect.minX + 461, y: rect.minY + 335))
//    pencil.addLine(to: CGPoint(x: rect.minX + 450, y: rect.minY + 280))
//    pencil.addLine(to: CGPoint(x: rect.minX + 475, y: rect.minY + 230))
//    pencil.addLine(to: CGPoint(x: rect.minX + 463, y: rect.minY + 200))
//    pencil.addLine(to: CGPoint(x: rect.minX + 470, y: rect.minY + 194))
//    pencil.addLine(to: CGPoint(x: rect.minX + 490, y: rect.minY + 200))
//    pencil.addLine(to: CGPoint(x: rect.minX + 530, y: rect.minY + 270))
//    pencil.addLine(to: CGPoint(x: rect.minX + 540, y: rect.minY + 300))
//    pencil.closeSubpath()
//    
//    return pencil
//}

//func path(in rect: CGRect) -> Path {
//    var pencil = Path()
//    
//    pencil.move(to: CGPoint(x: rect.maxX - 245, y: rect.maxY - 30))
//    pencil.addLine(to: CGPoint(x: rect.midX + 170, y: rect.maxY - 130))
//    pencil.addLine(to: CGPoint(x: rect.midX + 215, y: rect.midY + 85))
//    pencil.addLine(to: CGPoint(x: rect.midX + 195, y: rect.midY + 60))
//    pencil.addLine(to: CGPoint(x: rect.midX + 210, y: rect.midY + 35))
//    pencil.addLine(to: CGPoint(x: rect.midX + 260, y: rect.midY + 50))
//    pencil.addLine(to: CGPoint(x: rect.midX + 260, y: rect.maxY - 130))
//    pencil.addLine(to: CGPoint(x: rect.maxX - 105, y: rect.maxY - 150))
//    pencil.addLine(to: CGPoint(x: rect.maxX - 85, y: rect.maxY - 80))
//    pencil.closeSubpath()
//    
//    return pencil
//}

struct JeffContentView: View {
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
                                    .padding(.init(top: h / 1.8, leading: w / 1.42, bottom: h / 16, trailing: w / 8.70))
                                    .scaleEffect(x: -1, y: 1)
                                
                                Image("Ivy Vines")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                
                                StreamLogo2()
                                    .stroke(.secondary, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                
                                StreamLogo()
                                    .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
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

struct JeffContentView_Previews: PreviewProvider {
    static var previews: some View {
        JeffContentView()
    }
}

struct IvyVinesShape: Shape {
    func path(in rect: CGRect) -> Path {
        var pencil = Path()
        
        pencil.move(to: CGPoint(x: 620, y: 610))
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
    
//    //0,0
//    func path(in rect: CGRect) -> Path {
//        var pencil = Path()
//        
//        pencil.move(to: CGPoint(x: 461, y: 335))
//        pencil.addLine(to: CGPoint(x: 450, y: 280))
//        pencil.addLine(to: CGPoint(x: 475, y: 230))
//        pencil.addLine(to: CGPoint(x: 463, y: 200))
//        pencil.addLine(to: CGPoint(x: 470, y: 194))
//        pencil.addLine(to: CGPoint(x: 490, y: 200))
//        pencil.addLine(to: CGPoint(x: 490, y: 280))
//        pencil.addLine(to: CGPoint(x: 530, y: 270))
//        pencil.addLine(to: CGPoint(x: 540, y: 300))
//        pencil.closeSubpath()
//        
//        return pencil
//    }
    
//    //re-aligned
//    func path(in rect: CGRect) -> Path {
//        var pencil = Path()
//        
//        pencil.move(to: CGPoint(x: 461, y: 335))
//        pencil.addLine(to: CGPoint(x: 450, y: 280))
//        pencil.addLine(to: CGPoint(x: 475, y: 230))
//        pencil.addLine(to: CGPoint(x: 463, y: 200))
//        pencil.addLine(to: CGPoint(x: 470, y: 194))
//        pencil.addLine(to: CGPoint(x: 490, y: 200))
//        pencil.addLine(to: CGPoint(x: 490, y: 280))
//        pencil.addLine(to: CGPoint(x: 530, y: 270))
//        pencil.addLine(to: CGPoint(x: 540, y: 300))
//        pencil.closeSubpath()
//        
//        return pencil
//    }
}

struct IvyView: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: IvyView, rhs: IvyView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Backyard")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(x: -1, y: 1)
    
                    Image("Observable Ivy Vines")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(x: -1, y: 1)
                    
                    IvyVinesShape()
//                        .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                        .fill(.secondary)
                        .scaleEffect(x: -1, y: 1)
                        
                }
            }
        }
    }
}

//struct IvyView_Previews: PreviewProvider {
//    static var previews: some View {
//        IvyView().equatable()
//    }
//}
