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
                ZStack {
                    Image(rootController.currentLocation.backgroundImageName)
                        .resizable()
                        .scaledToFill()
                    
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
                        }
                    }
                }
            }

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
