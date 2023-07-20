//
//  Upstairs.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct UpstairsView: View {
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Upstairs")
                    .resizable()
                    .scaledToFill()
                
                //Door
                 Button("Door") {
                     print("Door tapped!")
                 }
                .frame(width: 220, height: 490)
                .background(Color.pink)
                .foregroundColor(Color.white)
                .offset(x: -112, y: -34)
                
                //Table
                 Button("Table") {
                     print("Table tapped!")
                 }
                .frame(width: 305, height: 155)
                .background(Color.gray)
                .foregroundColor(Color.white)
                .offset(x: 151, y: 165)
                
                //Bookmark
                Button("Book(mark)") {
                    print("Bookmark tapped!")
                }
                .frame(width: 100, height: 20)
                .background(Color.red)
                .foregroundColor(Color.white)
                .offset(x: 120, y: -5)
                
                //Vent
                Button("Vent") {
                    print("Vent tapped!")
                }
                .frame(width: 120, height: 80)
                .background(Color.black)
                .foregroundColor(Color.white)
                .offset(x: 110, y: -358)
                
                //Triangle Block
                Button("Triangle Block") {
                    print("Triangle Block tapped!")
                }
                .frame(width: 110, height: 70)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .offset(x: -275, y: 310)
            }
        }
        .ignoresSafeArea()
    }
}

struct UpstairsView_Previews: PreviewProvider {
    static var previews: some View {
        UpstairsView()
    }
}
