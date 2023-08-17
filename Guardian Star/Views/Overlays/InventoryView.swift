//
//  InventoryView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct InventoryView: View {
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    
    var body: some View {
        let menuColor = GameplayController.menuColor
        
        GeometryReader { geometry in
            let bottomUnsafeAreaHeight = geometry.safeAreaInsets.bottom
            let topUnsafeAreaHeight = geometry.safeAreaInsets.top
            let safeAreaHeight = geometry.size.height
            
            ZStack(alignment: .bottom) {
                menuColor
                    .ignoresSafeArea()
                
                ScrollView(.horizontal) {
                    Image("Backyard")
                        .frame(height: safeAreaHeight - 70)
                }
                
                VStack {
                    //Top Menu
                    ZStack(alignment: .top) {
                        
                        HStack {
                            Image(systemName: "house.circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Image(systemName: "magnifyingglass.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .scaledToFill()
                                .foregroundColor(.white)
                            
                            Image(systemName: "dot.circle.and.hand.point.up.left.fill")
                                .resizable()
                                .frame(width: 60, height: 50)
                                .scaledToFill()
                                .foregroundColor(.white)
                            
                            Image(systemName: "arrow.up.and.down.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .scaledToFill()
                                .foregroundColor(.white)
                        }
                        .padding(.leading)
                        .padding(.trailing)
                        .offset(y: topUnsafeAreaHeight + 10)
                    }
                    
                    Spacer()
                    
                    //Inventory Menu
                    ZStack(alignment: .bottom) {
//                        Rectangle()
//                            .foregroundColor(.secondary)
//                            .frame(height: bottomUnsafeAreaHeight)
                        
                        HStack {
                            Spacer()
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 70, height: 70)
                                    .foregroundColor(menuColor)
                                
                                Image(systemName: "backpack.circle")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .scaledToFill()
                                    .foregroundColor(.white)
                            }
                            .offset(x: -10, y: -bottomUnsafeAreaHeight)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
