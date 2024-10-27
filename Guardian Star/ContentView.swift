//
//  ContentView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/9/23.
//

import SwiftUI

struct ContentView: View, Equatable {
    //Root controller holds majority of view setup and data
    //This way, ContentView's job is just to display that data
    @EnvironmentObject var rootController: RootController
    
    //All views have equatable setup to allow preview to reload less often
    let viewID = UUID()
    static func == (lhs: ContentView, rhs: ContentView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    
    var body: some View {
        ZStack {
            
            //Fill the safe area with black
            Color.black
                .ignoresSafeArea()
            
            //Holds the interactable play area
            ScrollView(.horizontal) {
                //Scroll view size determined by current game location background
                Image(rootController.currentLocation.backgroundImageName)
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        //Measure play area size
                        GeometryReader { proxy in
                            let w = proxy.size.width
                            let h = proxy.size.height
                            
                            //Layer regular image versions of each object under everything so the objects don't disappear on playmode change
                            //Each object image has the same dimensions as the background
                            ForEach(rootController.currentLocation.defaultImageNames, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                            }
                            
                            switch rootController.currentMode {
//Observable Buttons
                            case .observe:
                                let buttons = rootController.currentLocation.observeableObjects
                                
                                ForEach(buttons, id: \.imageName) { button in
                                    let topOffset = h / button.padding.top
                                    let leadingOffest = w / button.padding.leading
                                    let bottomOffset = h / button.padding.bottom
                                    let trailingOffset = w / button.padding.trailing
                                    
                                    Button {
                                        rootController.observeObject(emoteName: button.emoteName, message: button.message)
                                    } label: {
                                        Rectangle()
                                            .fill(.clear)
                                            .overlay {
                                                Image(button.imageName)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .clipped()
                                                    .padding(EdgeInsets(top: -topOffset, leading: -leadingOffest, bottom: -bottomOffset, trailing: -trailingOffset))
                                                
                                            }
                                    }
                                    .contentShape(button.tappableArea)
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                }
//Interactive Buttons
                            case .interact:
                                let buttons = rootController.currentLocation.interactiveObjects
//Navigational Buttons
                            case .navigate:
                                let buttons = rootController.currentLocation.navigationalObjects
                                
                                ForEach(buttons, id: \.destination) { button in
                                    let topOffset = h / button.padding.top
                                    let leadingOffest = w / button.padding.leading
                                    let bottomOffset = h / button.padding.bottom
                                    let trailingOffset = w / button.padding.trailing
                                    
                                    Button {
                                        rootController.navigate(to: button.destination)
                                    } label: {
                                        Rectangle()
                                            .fill(.clear)
                                            .overlay {
                                                Image("Arrow Glow")
                                                    .resizable()
                                                    .scaledToFit()
                                                
                                                Image(button.imageName)
                                                    .resizable()
                                                    .scaledToFit()
                                            }
                                    }
                                    .padding(EdgeInsets(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                }
                            default:
                                EmptyView()
                            } //Current Mode
                        } //Geo Reader
                    } //Overlay
            } //Scroll View

            //Dialogue View:
            if rootController.showComment == true {
                CommentDialogueBoxView()
            }
            
            //Overlay View:
            MainOverlayViews()
        } //Zstack
    } //View Body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .equatable()
            .environmentObject(RootController())
    }
}
