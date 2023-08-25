//
//  InventoryView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct MainOverlayViews: View {
    @StateObject private var playmodeModel = PlaymodeModel()
    @State var currentMode = PlayMode.none
    
    var observeButtonColor: Color {
        if currentMode == .observe {
            return Color.white
        } else {
            return Color.secondary
        }
    }
    var interactButtonColor: Color {
        if currentMode == .interact {
            return Color.white
        } else {
            return Color.secondary
        }
    }
    var navigateButtonColor: Color {
        if currentMode == .navigate {
            return Color.white
        } else {
            return Color.secondary
        }
    }
    
    let menuColor = GameplayController.menuColor
    
    var body: some View {
        VStack {
            //Home Button
            HStack {
                Button {
                    //Home Button:
                    //"Return to the Home Screen? Your progress will be saved." pop-up
                    //save progress, if necissary
                    //Navigate to home screen
                } label: {
                    Image(systemName: "house.circle")
                        .resizable()
                        .scaledToFill()
                        .foregroundColor(.white)
                }
                .frame(width: 50, height: 50)
                .accessibilityIdentifier("Home Button")
                
                Spacer()
            }
            .padding()
            
            Spacer()
            
            //Bottom Menu
            HStack {
                HStack {
                    //Observe Button
                    Button {
                        currentMode = .observe
                    } label: {
                        Image(systemName: "magnifyingglass.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .foregroundColor(observeButtonColor)
                    }
                    .onChange(of: currentMode) { newMode in
                        playmodeModel.switchGameMode(to: newMode)
                    }
                    .accessibilityIdentifier("Observe Button")
                    
                    //Interact Button
                    Button {
                        currentMode = .interact
                    } label: {
                        Image(systemName: "dot.circle.and.hand.point.up.left.fill")
                            .resizable()
                            .frame(width: 50, height: 42)
                            .scaledToFill()
                            .foregroundColor(interactButtonColor)
                    }
                    .onChange(of: currentMode) { newMode in
                        playmodeModel.switchGameMode(to: newMode)
                    }
                    .accessibilityIdentifier("Interact Button")
                    
                    //Navigate Button
                    Button {
                        currentMode = .navigate
                    } label: {
                        Image(systemName: "arrow.up.and.down.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .scaledToFill()
                            .foregroundColor(navigateButtonColor)
                    }
                    .onChange(of: currentMode) { newMode in
                        playmodeModel.switchGameMode(to: newMode)
                    }
                    .accessibilityIdentifier("Navigate Button")
                }
                .padding(.leading)
                
                Spacer()
                
                //Inventory
                Button {
                    //Inventory Button:
                    //When opening:
                        //shows inventory view (animated)
                        //set mode to inspect
                    //When closing:
                        //removes inventory view (animated)
                        //restores previous game mode
                } label: {
                    ZStack {
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.secondary)
                        
                        Image(systemName: "backpack.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFill()
                            .foregroundColor(.white)
                    }
                }
                .padding(.trailing, 10)
                .accessibilityIdentifier("Inventory Button")
            }
            
            Rectangle()
                .frame(width: .infinity, height: 12)
                .foregroundColor(menuColor)
                .padding(-10)
        }
    }
}
