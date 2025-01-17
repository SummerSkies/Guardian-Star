//
//  InventoryView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct MainOverlayViews: View {
    @EnvironmentObject private var rootController: RootController
    
    @State private var previousPlayMode = PlayMode.observe
    @State private var previousInventoryMode = PlayMode.inspect
    
    var inventoryOffset: CGFloat {
        if rootController.inventoryIsOpen {
            return 0
        } else {
            return 194
        }
    }
    
    //Colors
    var observeButtonColor: Color {
        if rootController.currentMode == .observe {
            return Color.white
        } else {
            return Color.secondary
        }
    }
    var interactButtonColor: Color {
        if rootController.currentMode == .interact {
            return Color.white
        } else {
            return Color.secondary
        }
    }
    var navigateButtonColor: Color {
        if rootController.currentMode == .navigate {
            return Color.white
        } else {
            return Color.secondary
        }
    }
    var inspectButtonColor: Color {
        if rootController.currentMode == .inspect {
            return Color.white
        } else {
            return Color.white.opacity(0.6)
        }
    }
    var craftButtonColor: Color {
        if rootController.currentMode == .craft {
            return Color.white
        } else {
            return Color.white.opacity(0.6)
        }
    }
    var useButtonColor: Color {
        if rootController.currentMode == .use {
            return Color.white
        } else {
            return Color.white.opacity(0.6)
        }
    }
    
    let menuColor = RootController.menuColor
    
    //MARK: VIEW BODY
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
                //.background(Color.secondary)
                
                Spacer()
            }
            .padding()
            
            Spacer()
            
            //Bottom Menu
            VStack {
                HStack {
                    HStack {
                        //Observe Button
                        Button {
                            rootController.currentMode = .observe
                        } label: {
                            Image(systemName: "magnifyingglass.circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .foregroundColor(observeButtonColor)
                        }
                        .accessibilityIdentifier("Observe Button")
                        .disabled(rootController.inventoryIsOpen)
                        
                        //Interact Button
                        Button {
                            rootController.currentMode = .interact
                        } label: {
                            Image(systemName: "dot.circle.and.hand.point.up.left.fill")
                                .resizable()
                                .frame(width: 50, height: 42)
                                .scaledToFill()
                                .foregroundColor(interactButtonColor)
                        }
                        .accessibilityIdentifier("Interact Button")
                        .disabled(rootController.inventoryIsOpen)
                        
                        //Navigate Button
                        Button {
                            rootController.currentMode = .navigate
                        } label: {
                            Image(systemName: "arrow.up.and.down.circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .foregroundColor(navigateButtonColor)
                        }
                        .accessibilityIdentifier("Navigate Button")
                        .disabled(rootController.inventoryIsOpen)
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    //Inventory Button
                    ZStack {
                        Button {
                            rootController.inventoryIsOpen.toggle()
                            
                            if rootController.inventoryIsOpen {
                                previousPlayMode = rootController.currentMode
                                rootController.currentMode = previousInventoryMode
                            } else {
                                previousInventoryMode = rootController.currentMode
                                rootController.currentMode = previousPlayMode
                                
                            }
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
                }
                
                //Inventory
                ZStack {
                    //Background
                    Rectangle()
                        .frame(width: nil, height: abs(200))
                        .foregroundColor(.secondary)
                        .padding(-10)
                    
                    Rectangle()
                        .stroke(menuColor, style: .init(lineWidth: 12))
                        .frame(width: nil, height: abs(200))
                        .padding(.init(top: -5, leading: -10, bottom: 0, trailing: -10))
                    
                    //Side bar
                    HStack(spacing: 10) {
                        ZStack {
                            Rectangle()
                                .frame(width: 70, height: 160)
                                .foregroundColor(.clear)
                            
                            Capsule()
                                .foregroundColor(.white)
                                .frame(width: 5, height: 160)
                                .offset(x: 30)
                            
                            Capsule()
                                .foregroundColor(.white.opacity(0.6))
                                .frame(width: 60, height: 5)
                                .offset(y: -29)
                            
                            Capsule()
                                .foregroundColor(.white.opacity(0.6))
                                .frame(width: 60, height: 5)
                                .offset(y: 29)
                            
                            //Buttons
                            VStack(spacing: 20) {
                                Button {
                                    rootController.currentMode = .inspect
                                } label: {
                                    Image(systemName: "eye.circle")
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width: 40, height: 40)
                                .foregroundColor(inspectButtonColor)
                                
                                Button {
                                    rootController.currentMode = .craft
                                } label: {
                                    Image(systemName: "hammer.circle")
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width: 40, height: 40)
                                .foregroundColor(craftButtonColor)
                                
                                Button {
                                    rootController.currentMode = .use
                                } label: {
                                    Image(systemName: "circle")
                                        .resizable()
                                        .scaledToFit()
                                        .overlay (
                                            Image  (systemName: "paintbrush.fill")
                                                .imageScale(.large)
                                        )
                                }
                                .frame(width: 40, height: 40)
                                .foregroundColor(useButtonColor)
                            }
                            
                        }
                        
                        //Inventory Items
                        Grid(horizontalSpacing: 15, verticalSpacing: 15) {
                            ForEach((1...3), id: \.self) { _ in
                                GridRow {
                                    ForEach((1...5), id: \.self) { _ in
                                        Button {
                                            if rootController.currentMode == .inspect {
                                                rootController.observeObject(emoteName: "Thoughtful Susie", message: "Item inspected.")
                                            }
                                            
                                        } label: {
                                            Rectangle()
                                        }
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.white)
                                    }
                                }
                            }
                        }
                        .frame(width: 300, height: 170)
                    }
                    
                }
            }
            .offset(y: inventoryOffset)
            .animation(.easeInOut(duration: 0.6), value: inventoryOffset)
            .clipped()
            
        }
    }
}
