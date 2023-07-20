//
//  Hallway.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct HallwayView: View {
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Hallway")
                    .resizable()
                    .scaledToFill()
                
                //Rectangle Block
                 Button("Rectangle Block") {
                     print("Rectangle Block tapped!")
                 }
                .frame(width: 100, height: 60)
                .background(Color.pink)
                .foregroundColor(Color.white)
                .offset(x: 50, y: -192)
                
                //Stairs
                Button("Stairs") {
                    print("Stairs tapped!")
                }
                .frame(width: 300, height: 200)
                .background(Color.gray)
                .foregroundColor(Color.white)
                .offset(x: 0, y: -60)
                
                //Arch Block
                Button("Arch Block") {
                    print("Arch Block tapped!")
                }
                .frame(width: 120, height: 80)
                .background(Color.yellow)
                .foregroundColor(Color.white)
                .offset(x: 125, y: 100)
            }
        }
        .ignoresSafeArea()
    }
}

struct HallwayView_Previews: PreviewProvider {
    static var previews: some View {
        HallwayView()
    }
}
