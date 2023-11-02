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
                            
                            ForEach(rootController.currentLocation.defaultImageNames, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                            }
                            
                            if rootController.currentMode == .observe {
                                let buttons = rootController.currentLocation.observeableObjects
                                
                                ForEach(buttons, id: \.imageName) { button in
                                    let topOffset = h / button.padding.top
                                    let leadingOffest = w / button.padding.leading
                                    let bottomOffset = h / button.padding.bottom
                                    let trailingOffset = w / button.padding.trailing
                                    
                                    Button {
                                        rootController  .observeObject(emoteName: button.emoteName, message: button.message)
                                    } label: {
                                        Rectangle()
                                            .fill(.clear)
                                            .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                            .overlay {
                                                Image(button.imageName)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .clipped()
                                            }
                                    }
                                    .contentShape(button.tappableArea)
                                }
                            } //Current Mode
                        } //Geo Reader
                    } //Overlay
            } //Scroll View

            //Dialogue View:
            if rootController.showComment == true {
                CommentDialogueBoxView(message: $rootController.currentMessage, emote: $rootController.currentEmoteName, showComment: $rootController.showComment)
            }
            
            
            //Overlay View:
            MainOverlayViews(currentMode: $rootController.currentMode, showComment: $rootController.showComment, inventoryIsOpen: $rootController.inventoryIsOpen)
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().equatable()
    }
}
