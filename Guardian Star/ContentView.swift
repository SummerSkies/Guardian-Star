//
//  ContentView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/9/23.
//

import SwiftUI

struct ContentView: View, Equatable {
    @StateObject private var rootController = RootController()
    static let menuColor = Color(red: 38 / 250, green: 38 / 250, blue: 38 / 250)
    
    let viewID = UUID()
    
    static func == (lhs: ContentView, rhs: ContentView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView(.horizontal) {
                Image(rootController.currentLocation.backgroundImageName)
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        GeometryReader { proxy in
                            let w = proxy.size.width
                            let h = proxy.size.height
                            let topOffset = h / 1.8
                            let leadingOffest = w / 1.42
                            let bottomOffset = h / 16
                            let trailingOffset = w / 8.7
                            
                            //let _ = print(h / w)
                            //let _ = print(h == (w * 0.75))
                            /*
                            ForEach(rootController.currentLocation.defaultImageNames, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                            }
                            
                            
                            if rootController.currentMode == .observe {
                                let buttons = rootController.currentLocation.observeableObjects
                                

                                
                                ForEach(buttons, id: \.imageName) { button in
                                    
                                    Button {
                                        rootController  .observeObject(emoteName: button.emoteName, message: button.message)
                                    } label: {
                                        Image(button.imageName)
                                            .resizable()
                                            .scaledToFill()
                                    }
                             
                                    .contentShape(button.tappableArea)
                             */
//                                        .opacity(0.001)
//                                        .frame(width: w * 0.2, height: h * 0.1)
//                                    .overlay (
//                                        GeometryReader { proxy in
//                                            let w = proxy.size.width
//                                            let h = proxy.size.height
//                                            StreamLogo()
//                                                .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//                                                .frame(width: w, height: h, alignment: .center)
//                                        }
//                                    )
//                                        //.background(Rectangle().stroke()) // for debugging
//                                        .padding(.leading, w * 0.27)
//                                        .padding(.top, h * 0.31)
//                                    Rectangle()
//                                        .fill(.green)
//                                        .padding(.init(top: h / 1.8, leading: w / 1.42, bottom: h / 16, trailing: w / 8.70))
                            let contentShape = StreamLogo()
                            
                            Button {
                                print("hello")
                            } label: {
                                Rectangle()
                                    .fill(.clear)
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .overlay {
                                        Image("Ivy Vines")
                                            .resizable()
                                            .scaledToFill()
                                            .clipped()
                                    }
                            }
                            .contentShape(contentShape)
                                    
                                    
                                    
                                     
                                    
                                    
//                                        .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                            /*
                                }
                            } else if rootController.currentMode == .interact {
                                
                            } //Current Mode
                            
                            if h / w == 0.75 {
                                let scaleFactor = ((CGFloat(w)) / 300) - 1.2
                                let offsetXFactor = 160 * (scaleFactor - 1.22)
                                let offsetYFactor = 210 * (scaleFactor - 1.20)
                                
//                                IvyVinesShape()
//                                    //.offset(x: 151, y: 203)
//                                    .offset(x: offsetXFactor, y: offsetYFactor)
//                                    .scale(scaleFactor)
//                                    .fill(.secondary)
                            } else {
                                let scaleFactor = abs((CGFloat(h) - CGFloat(w)) / 100) - 0.7
                                let offsetXFactor = 160 * (scaleFactor - 0.4)
                                let offsetYFactor = 210 * (scaleFactor - 1.4)
                                
//                                IvyVinesShape()
//                                    .offset(x: offsetXFactor, y: offsetYFactor)
//                                    .scale(scaleFactor)
//                                    .fill(.secondary)
                            }
                             */
                        } //Geo Reader
                    } //Overlay
            } //Scroll View

            //Dialogue View:
            if rootController.showComment == true {
                CommentDialogueBoxView(message: $rootController.currentMessage, emote: $rootController.currentEmoteName, showComment: $rootController.showComment)
            }
            
            /*
            //Overlay View:
            MainOverlayViews(currentMode: $rootController.currentMode, showComment: $rootController.showComment, inventoryIsOpen: $rootController.inventoryIsOpen)
             */
            }
                             
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().equatable()
            .environment(\.colorScheme, .light)
    }
}
