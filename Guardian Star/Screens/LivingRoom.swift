//
//  LivingRoom.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct LivingRoomView: View {
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Image("Living Room")
                    .resizable()
                    .scaledToFill()
                
                //Door
                Button("Door") {
                    print("Door tapped!")
                }
                .frame(width: 244, height: 430)
                .background(Color.gray)
                .foregroundColor(Color.white)
                .offset(x: 591, y: -212)
                
                //Chair
                Button("Chair") {
                    print("Chair tapped!")
                }
                .frame(width: 200, height: 400)
                .background(Color.mint)
                .foregroundColor(Color.white)
                .offset(x: 330, y: 0)
                
                //Twine
                Button("Twine") {
                    print("Twine tapped!")
                }
                .frame(width: 60, height: 70)
                .background(Color.brown)
                .foregroundColor(Color.white)
                .offset(x: -300, y: 240)
                
                //Pool Cue
                Button("Pool Cue") {
                    print("Pool Cue tapped!")
                }
                .frame(width: 30, height: 400)
                .background(Color.black)
                .foregroundColor(Color.white)
                .offset(x: 350, y: 100)
                
                //Pool Ball
                Button("Pool Ball") {
                    print("Pool Ball tapped!")
                }
                .frame(width: 60, height: 60)
                .background(Color.red)
                .foregroundColor(Color.white)
                .offset(x: 550, y: 370)
            }
        }
        .ignoresSafeArea()
    }
}

struct LivingRoomView_Previews: PreviewProvider {
    static var previews: some View {
        LivingRoomView()
    }
}
