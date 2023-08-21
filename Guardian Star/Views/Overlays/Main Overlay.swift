//
//  InventoryView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct MainOverlayViews: View {
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    
    var body: some View {
        let menuColor = GameplayController.menuColor
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView(.horizontal) {
                Image("Backyard")
            }
            
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
                    
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                //Bottom Menu
                HStack {
                    HStack {
                        //Observe Button
                        Button {
                            //switch to observe mode
                            //change images to reflect mode change
                        } label: {
                            Image(systemName: "magnifyingglass.circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .foregroundColor(.white)
                        }
                        
                        //Interact Button
                        Button {
                            //switch to interact mode
                            //change images to reflect mode change
                        } label: {
                            Image(systemName: "dot.circle.and.hand.point.up.left.fill")
                                .resizable()
                                .frame(width: 50, height: 42)
                                .scaledToFill()
                                .foregroundColor(.white)
                        }
                        
                        //Navigate Button
                        Button {
                            //switch to navigate mode
                            //change images to reflect mode change
                        } label: {
                            Image(systemName: "arrow.up.and.down.circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .foregroundColor(.white)
                        }
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
                }
                
                Rectangle()
                    .frame(width: .infinity, height: 12)
                    .foregroundColor(menuColor)
                    .padding(-10)
            }
        }
    }
}


struct MainOverlayViews_Previews: PreviewProvider {
    static var previews: some View {
        MainOverlayViews()
    }
}
