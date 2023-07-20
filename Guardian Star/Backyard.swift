//
//  File.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/12/23.
//

import SwiftUI

struct BackyardView: View {
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Backyard")
                    .resizable()
                    .scaledToFill()
                
                //Bedroom Windows
                Button("Bedroom Windows") {
                    print("Bedroom Windows tapped!")
                }
                .frame(width: 300, height: 180)
                .background(Color.purple)
                .foregroundColor(Color.white)
                .offset(x: 124, y: 0)
                
                //Living Room Window
                Button("Living Room Window") {
                    print("Living Room Window tapped!")
                }
                .frame(width: 110, height: 110)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .offset(x: 204, y: 227)
                
                //Ivy Vines
                Button("Ivy Vines") {
                    print("Ivy Vines tapped!")
                }
                .frame(width: 100, height: 400)
                .background(Color.mint)
                .foregroundColor(Color.white)
                .offset(x: 330, y: 120)
                
                //Bushes
                Button("Bushes") {
                    print("Bushes tapped!")
                }
                .frame(width: 480, height: 100)
                .background(Color.green)
                .foregroundColor(Color.white)
                .offset(x: 177, y: 360)
            }
        }
        .ignoresSafeArea()
    }
}

struct BackyardView_Previews: PreviewProvider {
    static var previews: some View {
        BackyardView()
    }
}
